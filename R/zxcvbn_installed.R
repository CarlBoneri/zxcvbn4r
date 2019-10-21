#' Ensure zxcvbn-cli is installed
#'
#' \code{zxcvbn.installed}
#'
#' Function to detect if the library is installed on the system.
#'
#'
#'
#'
#' @author Carl Boneri, \email{cboneri@@gmail.com}
#'
#'
#' @examples
#' zxcvbn.installed()
#'
#' @export

zxcvbn.installed <- function(){
  # Insure it's installed on system for linux
  tested <-  tryCatch(system("zxcvbn -V", intern = TRUE, ignore.stderr = T), error = function(e)NA)

  if(is.na(tested)){
    return(FALSE)
  }else {
    return(TRUE)
  }
}
