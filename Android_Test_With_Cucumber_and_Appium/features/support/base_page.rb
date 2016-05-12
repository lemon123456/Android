module LocatorModule

  def findByName(name)
    find_element(:name, "#{name}")
  end

  def findById(id)
    find_element(:id, "#{id}")
  end

  def findByXpath(xpath)
    find_element(:xpath, "#{xpath}")
  end

  def clickByName(name)
    waitElement { findByName(name).click }
  end

  def clickById(id)
    waitElement { findById(id).click }
  end

  def verifyTextNotExist(content)
    raise("Should not find text: #{content}") unless texts(content).empty?
  end

  def verifyTextExist(content)
    raise("Not find text: #{content}") if texts(content).empty?
  end

  def verifyButtonNotExist(button_name)
    raise("Should not find button: #{button_name}") if exists { button(button_name) }
  end

  def verifyButtonExist(button_name)
    raise("Not find button: #{button_name}") unless exists { button(button_name) }
  end

  def waitElement
    timeout = 30
    polling_interval = 0.2
    time_limit = Time.now + timeout
    loop do
      begin
        yield
        rescue Exception => error
      end
      return if error.nil?
      raise error if Time.now >= time_limit
      sleep polling_interval
    end
  end

end

class PrimeroAppPage
  include LocatorModule
end