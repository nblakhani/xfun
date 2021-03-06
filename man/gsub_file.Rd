% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/io.R
\name{gsub_file}
\alias{gsub_file}
\alias{gsub_files}
\alias{gsub_dir}
\alias{gsub_ext}
\title{Search and replace strings in files}
\usage{
gsub_file(file, ...)

gsub_files(files, ...)

gsub_dir(dir = ".", ...)

gsub_ext(ext, ..., dir = ".")
}
\arguments{
\item{file}{Path of a single file.}

\item{...}{Arguments passed to \code{gsub()}. Note that the argument \code{x}
of \code{gsub()} is the content of the file.}

\item{files}{A vector of file paths.}

\item{dir}{Path to a directory (all files under this directory will be
replaced).}

\item{ext}{A filename extension (without the period).}
}
\description{
These functions provide the "file" version of \code{\link{gsub}()}, i.e.,
they perform searching and replacement in files via \code{gsub()}.
}
\note{
These functions perform in-place replacement, i.e., the files will be
  overwritten. Make sure you backup your files in advance, or use version
  control!
}
\examples{
library(xfun)
f = tempfile()
writeLines(c("hello", "world"), f)
gsub_file(f, "world", "woRld", fixed = TRUE)
readLines(f)
}
