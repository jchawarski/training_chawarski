

x <- c(1,2,3)
dat <- data.frame(a=1, b="x")

# when writing function name, use snake_case
# try to name them using verbs



say_hi <- function() {
  
  message("Hi!")
  
}

say_hi_to_someone <- function(name) {
  message("Hi ", name, " how are you?")
}

say_hi_to_someone(name = "Jake")


# inside the braces indicates the work that you need to be done
# the last step in the brackets, it what gets returned after its run

return_name <- function(name) {    # parentheses store arguments
  if (name == "Nicole") {
    return("hi")
  }
  return(name)             # can have function that returns from different places
}

return_name("Nicole")


greet <- function(name, greeting) {   # can also provide a value here without putting it in a function (e.g. greeting = "Hello")
  message(greeting, ", ", name)
}

greet("Jake", "How do you do?")


# overall pattern
## for buildling a function

function_name <- function(arg1, arg2, arg3 = "default") {
  # body of fucntion
  ## ...code that does the work..
  ## and a return at the end
}

# can also run a linter tool which will enforce convention


exterior_f <- c(77, 78, 77)
exterior_c <- (exterior_f - 32) * 5 / 9 


surface_f <- c(103, 102, 99)                                                                                             
surface_c <- (surface_f - 32) * 5 / 9 

                                      
convert_f_to_c <- function(fahr) {
  celsius <- (fahr - 32) * 5 / 9
  return(celsius)
}

# more complex function
convert_temps <- function(fahr) {
  celsius <- (fahr - 32) * 5 / 9
  kelvin <- celsius + 273.15
  return(list(
    fahr = fahr,
    celsius = celsius,
    kelvin = kelvin
    ))
  
}

#two ways to use the function to create a data.frame (or list etc)
data.frame(convert_temps(surface_f))
convert_temps(interior_f) %>% data.frame()


# more complex function
convert_temps <- function(temp, units = "F") {
  if(units == "F") {
    celsius <- (temp - 32) * 5 / 9
    fahr <- temp
  } else {
    fahr <- celsius * 9 / 5 + 32
    celsius <- temp
  } 
  kelvin <- celsius + 273.15
  return(list(
    fahr = fahr,
    celsius = celsius,
    kelvin = kelvin
  ))
  }

convert_temps(surface_f, "F")




