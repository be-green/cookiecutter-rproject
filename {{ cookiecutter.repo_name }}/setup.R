path <- paste0("~/R/win-library/",R.version$major, ".", gsub("\\.[0-9]+", "", R.version$minor))

.libPaths(path)

if(!require(remotes, quietly = T)) {
    install.packages("remotes", repos = 'https://cloud.r-project.org/')
}

library(remotes)

install_deps(".", upgrade = "never")
