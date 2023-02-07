#' read_excel_allsheets
#' @description 
#' Reads all sheets of a worksheet and save it in a list of tibbles
#' @param filename complete name of the excel worksheet
#' @export
read_excel_allsheets <- function(filename) {
  sheets <- readxl::excel_sheets(filename)
  x <- lapply(sheets, function(X) readxl::read_excel(filename, sheet = X))
  names(x) <- sheets
  x
}
