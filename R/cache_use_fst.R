#' Cache objects using fst (fst)
#'
#' Enables caching using the *fst* package
#'
#' @details
#'
#' You probably should use [cache_use_fst()] instead which makes fst
#' the default method for reading/writing to the cache.  There is generally no
#' reason to invoke this function as it is called when the packages is
#' attached.
#'
#' @seealso
#'  - [cache_use_fst()]
#'
#' @examples
#' dontrun{
#'  cache_use_fst()
#'  cache(mtcars)
#'  if( exists('mtcars') ) rm(mtcars)
#'  uncache(mtcars)
#'  fs::dir_ls( cache_find() )
#' }
#'
#' @importFrom cache cache_backend_register
#' @rdname cache.fst
#' @export

cache_register_fst <- function()
  cache::cache_backend_register(
      name='fst'
    , reader=fst::read_fst
    , writer=fst::write_fst
    , ext=extension
    , pkg=pkg
    )


#' @rdname cache.fst
#' @export

cache_use_fst <- function() {
  cache_register_f
  cache::cache_backend("fst")
}
