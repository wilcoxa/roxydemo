
#' @importFrom roxygen2 roxy_tag_parse
#' @export

roxy_tag_parse.roxy_tag_tip <- function(x) {
    roxygen2::tag_markdown(x)
}

#' @importFrom roxygen2 roxy_tag_rd
#' @export

roxy_tag_rd.roxy_tag_tip <- function(x, base_path, env) {
    roxygen2::rd_section("tip", x$val)
}

#' @export

format.rd_section_tip <- function(x, ...) {
    paste0(
        "\\section{Tips and tricks}{\n",
        "\\itemize{\n",
        paste0("  \\item ", x$value, "\n", collapse = ""),
        "}\n",
        "}\n"
    )
}
