class ApplicationController < ActionController::Base
  def blank_square_form

    render({ :template => "calculation_templates/square_form.html.erb"})
  end

  def calculate_square
    #params = {"elephant" => "42"}
    @num = params.fetch("elephant").to_f
    @square_of_num = @num * @num

    render({ :template => "calculation_templates/square_results.html.erb"})
  end

  def blank_random_form

    render({ :template => "calculation_templates/rand_form.html.erb"})
  
  end

  def calculate_random
    @lower = params.fetch("user_min").to_f
    @upper = params.fetch("user_max").to_f
    @result = rand(@lower..@upper)

    render({ :template => "calculation_templates/rand_results.html.erb"})
  end

  def blank_square_root_form
  
    render({ :template => "calculation_templates/square_root_form.html.erb"})
  end

  def calculate_square_root
    @square_num = params.fetch("square_root_number").to_f
    
    render({ :template => "calculation_templates/square_root_results.html.erb"})
  end

  def payment_form

    render({ :template =>"calculation_templates/payment_form.html.erb"})

  end

  def calculate_payment
    @apr = params.fetch("apr").to_f
    @apr = @apr.round(4)
    @year = params.fetch("year").to_f
    @principle = params.fetch("principle")
    @payment = @principle*(((@apr/100)*((1 + (@apr/100))**@year))/(((1+(@apr/100))**@year)-1))

    render({ :template =>"calculation_templates/payment_results.html.erb"})
  end 

end
