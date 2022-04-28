
roxy_tag_parse.roxy_tag_tip <- function(x) {
    tag_markdown(x)
}

roxy_tag_rd.roxy_tag_tip <- function(x, base_path, env) {
    rd_section("tip", x$val)
}

format.rd_section_tip <- function(x, ...) {
    paste0(
        "\\section{Tips and tricks}{\n",
        "\\itemize{\n",
        paste0("  \\item ", x$value, "\n", collapse = ""),
        "}\n",
        "}\n"
    )
}
