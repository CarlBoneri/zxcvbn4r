


zxcvbn.parse_score <- function(x){
  n <- stri_extract_all_regex(x, "(?<=Score:\\p{C}{2}\\[)(.*?)(?=\\])", omit_no_match = T) %>% unlist()
  eval(parse(text = n))
}


