module Screen
  module Android
    class LoginPage < PrimeroAppPage

      def loginAs(username, password)
        set_login_username(username)
        set_login_password(password)
        sign_in
        puts "Log in..."
      end

      def set_login_username(username)
        findById("username").send_keys("#{username}")
      end

      def set_login_password(password)
        findById("password").send_keys("#{password}")
      end

      def sign_in
        clickById("login_button")
      end

    end
  end
end