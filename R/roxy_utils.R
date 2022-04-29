
roxy_tag_parse.roxy_tag_tip <- function(x) {
    asNamespace("roxygen2")$tag_markdown(x)
}

roxy_tag_rd.roxy_tag_tip <- function(x, base_path, env) {
    asNamespace("roxygen2")$rd_section("tip", x$val)
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

.onLoad <- function(libname, pkgname) {
  if (isNamespaceLoaded("roxygen2")) {
    library(roxygen2)
    registerS3method("roxy_tag_parse", "roxy_tag_tip", roxy_tag_parse.roxy_tag_tip)
    registerS3method("roxy_tag_rd", "roxy_tag_tip", roxy_tag_rd.roxy_tag_tip)
  }
}
