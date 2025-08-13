with (obj_calculator) {
    if (other.label >= "0" && other.label <= "9") {
        if (waiting_for_second) {
            display_text = other.label;
            waiting_for_second = false;
        } else {
            if (display_text == "0") display_text = other.label;
            else display_text += other.label;
        }
    }
    else if (other.label == "+" || other.label == "-" || other.label == "*" || other.label == "/") {
        first_number = real(display_text);
        current_operator = other.label;
        waiting_for_second = true;
    }
    else if (other.label == "=") {
        second_number = real(display_text);
        switch (current_operator) {
            case "+": display_text = string(first_number + second_number); break;
            case "-": display_text = string(first_number - second_number); break;
            case "*": display_text = string(first_number * second_number); break;
            case "/": 
                if (second_number != 0) display_text = string(first_number / second_number);
                else display_text = "Error";
                break;
        }
    }
    else if (other.label == "C") {
        display_text = "0";
        first_number = 0;
        second_number = 0;
        current_operator = "";
        waiting_for_second = false;
    }
}
//Display Easter Eggs
//If at any moment the display shows one of these values, it will do the function. Maybe cause a button to appear instead?
if (obj_calculator.display_text == "8008135"){
    show_message("I'm Sorry. Program will now close!")
    game_end();
}
if (obj_calculator.display_text == "5318008"){
    show_message("I'm Sorry. Program will now close!")
    game_end();
}
