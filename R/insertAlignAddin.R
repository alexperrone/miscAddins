#' Insert align environment (LaTeX): begin{align*}, newline, then end{align*}
#'
#' Call this function as an addin to insert align environment (LaTeX)
#' at the cursor position.
#'
#' @export
insertAlignAddin <- function() {
  context <- rstudioapi::getActiveDocumentContext()$selection
  position <- context[[1]]$range$start
  position[1] <- position[1] + 1  # increment row (down 1 line)
  position[2] <- position[2] + 2  # indent columns (2 lines, hard-coded)
  rstudioapi::insertText("\\begin{align*}\n  \n\\end{align*}")
  rstudioapi::setCursorPosition(position)
}
