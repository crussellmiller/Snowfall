#' Start a conversation
#'
#' This function will produce a friendly greeting, useful in starting
#' conversations.
#' @param who character(1) Name of person to be greeted
#' @param how character(1) (optional). How is the person to be greeted. Options
#'  include "shout", "whisper" and "asis".
#' @return A character(1) vector containing appropriate greeting.
#' @examples
#' hi("Craig")
#' #\dontrun{   # can also use donttest{} to avoid running and testing
#' #   hi("Craig", "shout")
#' # }
#' @export
hi <- function(who, how=c("shout", "whisper", "asis")) {
  stopifnot(
    is.character(who),
    length(who)==1,
    !anyNA(who),
    nzchar(who)
  )
  how <- match.arg(how)   # match.arg checks that user has provided one of possible arguments
  fun <- switch(how, shout=toupper, whisper=tolower, asis=identity)
  paste("hi", fun(who), "how are you?")
}
