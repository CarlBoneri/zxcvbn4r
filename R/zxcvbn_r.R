#' Use the zxcvbn tool to test password strength
#'
#' \code{password.strength}
#'
#' Use the \href{https://github.com/gamontal/zxcvbn-cli}{zxcvbn-cli} tool to determine
#'   password strength.
#'
#' @param pw The password to test. This will be quoted if any special characters are
#'   included in the string.
#'
#' @param limit_results display the password score, a warning (if any), and suggestions (if any).
#'
#' @param sequence display match sequence along with the results.
#'
#' @param crack_times_sec display crack time estimations in seconds.
#'
#'
#' @author Carl Boneri, \email{cboneri@@gmail.com}
#'
#'
#' @examples
#'
#'
#' @export

password.strength <- function(pw = NULL, limit_results = FALSE, sequence = FALSE, crack_times_sec = FALSE, ...){

  v <- grabargs::grab_args_clean()

  # Check and remove the pw
  if(is.null(v$pw)){
    return("Need a password to check...")
  }else {
    v$pw <- NULL
  }

  # Test for installation
  check <- zxcvbn.installed()
  if(!check){
    return("Need to install zxcvbn https://github.com/gamontal/zxcvbn-cli")
  }

  pw <- sQuote(pw)

  if(any(mapply(isTRUE, v))){
    v <- v[which(mapply(isTRUE, v))]
    v <- sprintf("--%s", gsub("\\_", "-", names(v), perl = TRUE)) %>% paste0(collapse = " ")
    cmd_pat <- sprintf("zxcvbn %s %s", pw, v)
  }else {
    cmd_pat <- sprintf("zxcvbn %s", pw)
  }

  return(cmd_pat)
}
