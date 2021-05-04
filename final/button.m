function [number]=button(y_num,x_num)
     switch y_num
            case {697}
                switch x_num
                    case {1209}
                        number='1';
                    case {1336}
                        number='2';
                    case {1477}
                        number='3';
                    case {1633}
                        number='A';
                end
            case {770}
                switch x_num
                    case {1209}
                        number='4';
                    case {1336}
                        number='5';
                    case {1477}
                        number='6';
                    case {1633}
                        number='B';
                end
            case {852}
                switch x_num
                    case {1209}
                        number='7';
                    case {1336}
                        number='8';
                    case {1477}
                        number='9';
                    case {1633}
                        number='C';
                end
            case {941}
                switch x_num
                    case {1209}
                        number='*';
                    case {1336}
                        number='0';
                    case {1477}
                        number='#';
                    case {1633}
                        number='D';
                end
    end
end