=begin
Problem:
Build a morgage calculator (or car payment calculator)

Input: (collected from the user)
1. The loan amount
2. The Annual Percentage Rate (APR)
3. The loan duration (years or months) (percentage)

Output:
1. Monthly interest rate
2. Loan duration in months
3. Monthly payment amount

Data Structures:
input - 3 strings
intermediate - input strings converted to floats for calculations
output - interpolated representing calculated outputs

Algorithm: (optionally, save prompts to a yaml file)
Prompt - Welcome the user
Main Loop
  loan_amount_loop
    Prompt - Ask for the loan amount
     - store input in 'loan_amount' variable
     - validate that input is numeric (helper method)
     - break if valid
     - Indicate invalid response, must be a number

    apr_loop
      Prompt - Ask for the Annual Percentage Rate (APR) ie, for 10 % key in 10, 6.5% key in 6.5
       - store input in 'apr' variable
       - validate that input is numeric (helper method)
       - break if valid
       - Indicate invalid response, must be a number
       
    loan_duration_loop
      Prompt - Ask for the Loan Duration (months)
       - store input in 'loan_duration' variable
       - validate that input is a positive Integer
       - break if valid
       - Indicate invalid response, must be positive integer 

Calculations: (Output values rounded to 2 places for displayed format)
 - convert APR to 'monthly_rate' variable ((apr * 0.01) / 12)
 - Use the following formula  and input values to retrieve 'monthly_payment' (m) variable value
   m = p * (j / (1 - (1 + j)**(-n)))

 - Calculate 'total_amount_paid' over the length of the loan
 - Calculate total_interest_paid' over the length of the loan (total_amount_paid - loan_amount)

 Output the results for:
  - 'monthly_payment', 
  - 'total_amount_paid' over 'loan_duration',
  - 'total_interest_paid' over 'loan_duration'

  Prompt - Ask user if they want to calculate another loan
  - save input value ('repeat?')
  - break if 'repeat?' does not begin with a 'y'

  End Main Loop

  Output - Thank you for using the loan calculator! Seeya!
=end

require 'yaml'
MESSAGES = YAML.load_file('loan_calculator_messages.yml')
LANGUAGE = 'es' # 'en' for 'English', 'es' for 'Spanish'

def messages(message, lang='en')
  MESSAGES[lang][message]
end

def prompt(key)
  message = messages(key, LANGUAGE)
  "=> #{message}"
end

def valid_number?(num)
  /\A[+-]?\d+(\.[\d]+)?\z/.match(num)
end

def valid_int?(num)
  /^\+?([1-9]\d*)$/.match(num)
end

Kernel.puts(prompt('welcome'))

loop do # Main loop

  # Get input from user
  loan_amount = ""
  loop do
    Kernel.puts(prompt('ask_loan_amount'))
    loan_amount = Kernel.gets().chomp()
    break if valid_number?(loan_amount)
    Kernel.puts(prompt('invalid_number'))
  end

  apr = ""
  loop do
    Kernel.puts(prompt('ask_apr'))
    apr = Kernel.gets().chomp()
    break if valid_number?(apr)
    Kernel.puts(prompt('invalid_number'))
  end

  loan_duration = ""
  loop do
    Kernel.puts(prompt('ask_loan_duration'))
    loan_duration = Kernel.gets().chomp()
    break if valid_int?(loan_duration)
    Kernel.puts(prompt('invalid_int'))
  end

  # Calculations
  monthly_rate = ((apr.to_f * 0.01) / 12)
  monthly_payment = loan_amount.to_f * (monthly_rate / (1 - (1 + monthly_rate)**(-loan_duration.to_i)))
  total_amount_paid = monthly_payment * loan_duration.to_i
  total_interest_paid = total_amount_paid - loan_amount.to_f

  Kernel.puts(prompt('calculating'))
  Kernel.puts() # Adding a line space for better UX

  # Output
  Kernel.puts("#{prompt('monthly_payment_amount')} $#{monthly_payment.round(2)}")
  Kernel.puts("#{prompt('total_paid')} #{loan_duration} payments: $#{total_amount_paid.round(2)}")
  Kernel.puts("#{prompt('interest_paid')} $#{total_interest_paid.round(2)}")

  Kernel.puts() # Adding a line space for better UX

  Kernel.puts(prompt("go_again?"))
  answer = Kernel.gets().chomp()
  break unless answer.downcase.start_with?('y')
end

Kernel.puts(prompt('thank_you'))

