module AwesomeGem
  class WhoIs
    def self.awesome?
           require 'watir'
      browser = Watir::Browser.new(:chrome,
                        :prefs => {:password_manager_enable => false, :credentials_enable_service => false},
                        :switches => ["disable-infobars", "no-sandbox"])
      browser.goto 'localhost:3000/#/sign_in'
      browser.text_field(name: 'email').set 'test+183@clearfunds.com'
      browser.text_field(name: 'password').value = '123123123'
      browser.button(text: 'SIGN IN').click
      browser.driver.manage.timeouts.implicit_wait = 3
      browser.link(xpath: '//*[@id="masthead"]/nav/ul/li[2]/a').click  
      browser.driver.manage.timeouts.implicit_wait = 3
      browser.link(xpath: '//*[@id="masthead"]/nav/ul/li[3]/a').click
      sleep 20 
      browser.div(xpath: '//*[@id="header-root"]/div/div[3]/div[2]/div/div').click
      browser.link(text: 'Logout').click
      # browser.select(class: 'action-item header-accInfo').select('Logout')
      # browser.select_list(class: 'action-item header-accInfo').select('Logout')
      # sleep 10  
      browser.close
    end
  end
end
