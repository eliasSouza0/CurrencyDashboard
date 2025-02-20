# 📊 Currency Exchange Dashboard

This project is a dynamic currency exchange dashboard developed in Ruby on Rails. It allows users to visualize and monitor the exchange rates of various currencies (USD, EUR, BTC) against the Brazilian Real (BRL) over time. The dashboard integrates with an external API to fetch up-to-date exchange rate data and utilizes Chartkick for rendering interactive charts.

![Exchange Rates](./assets/images/exchange_rates.png)


## ✨ Features

- **Interactive Currency Selection:**
  - Users can select different currencies to display their exchange rates against the BRL.
- **Dynamic Charts:**
  - Visualize exchange rate trends over the past 30 days using interactive column charts.
- **Real-Time Data:**
  - Fetches the latest exchange rate data from an external API.

## 🛠️ Usage

- **Select Currency:**
  - Use the dropdown menu to choose a currency and display its exchange rate chart.
- **View Exchange Rates:**
  - Observe the trends of selected currency exchange rates over the past 30 days.

## 📋 Requirements

- **Ruby**
- **Ruby on Rails**
- **Chartkick**
- **Groupdate**

## 📚 Project Structure

### Controllers:

- **HomeController**: Manages the fetching and processing of exchange rate data from the API.

### Views:

- **index.html.erb**: Main view displaying the dropdown menu and the interactive chart.

### Models:

- No specific models are required as the data is fetched directly from the API.

## 📈 API Integration

### API Source:

- Uses the AwesomeAPI to retrieve exchange rate data.

## 🛡️ Error Handling

- Displays error messages if the data fetching fails or if there are validation issues.

## 📝 License

- This project is licensed under the MIT License.


## 🚀 Getting Started

To get started with the project, clone the repository and navigate to the project directory:

```sh
git clone https://github.com/your-username/CurrencyExchangeDashboard.git
cd CurrencyExchangeDashboard
bundle install
rails db:create db:migrate
rails s


-Then, open http://localhost:3000 in your web browser to access the application.