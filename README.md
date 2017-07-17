# Crypto Coins Converter

App with the goal of provide an UI to convert crypto coins. From each coin selected is caught its Bitcoins value, using the following formula to determine the conversion amount: selected coin ("from") * quantity informed / target coin ("to").

![CurrencyExchange](https://github.com/rwehresmann/currency_converter/blob/master/app/assets/images/main_page.jpg?raw=true)

## Usage

Clone the repository with `git clone https://github.com/rwehresmann/currency_converter.git`. In the repository folder:

  * Run `docker-compose build`
  * Run `docker-compose rm --rm app rake db:create`
  * Run `docker-compose rm --rm app rake db:migrate`
  * Run `docker-compose up`

It's done! Just access your `http://localhost:3000`.

## Whant to contribute?

Just fork the project and send a pull request!
