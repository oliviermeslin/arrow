% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ipc-stream.R
\name{read_ipc_stream}
\alias{read_ipc_stream}
\title{Read Arrow IPC stream format}
\usage{
read_ipc_stream(file, as_data_frame = TRUE, ...)
}
\arguments{
\item{file}{A character file name or URI, connection, \code{raw} vector, an
Arrow input stream, or a \code{FileSystem} with path (\code{SubTreeFileSystem}).
If a file name or URI, an Arrow \link{InputStream} will be opened and
closed when finished. If an input stream is provided, it will be left
open.}

\item{as_data_frame}{Should the function return a \code{tibble} (default) or
an Arrow \link{Table}?}

\item{...}{extra parameters passed to \code{read_feather()}.}
}
\value{
A \code{tibble} if \code{as_data_frame} is \code{TRUE} (the default), or an
Arrow \link{Table} otherwise
}
\description{
Apache Arrow defines two formats for \href{https://arrow.apache.org/docs/format/Columnar.html#serialization-and-interprocess-communication-ipc}{serializing data for interprocess communication (IPC)}:
a "stream" format and a "file" format, known as Feather. \code{read_ipc_stream()}
and \code{\link[=read_feather]{read_feather()}} read those formats, respectively.
}
\seealso{
\code{\link[=write_feather]{write_feather()}} for writing IPC files. \link{RecordBatchReader} for a
lower-level interface.
}
