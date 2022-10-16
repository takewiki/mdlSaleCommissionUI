#' 返回列表
#'
#' @param dms_token  口令
#'
#' @return 返回值
#' @export
#'
#' @examples
#' organization_query()
organization_query <- function(dms_token='9B6F803F-9D37-41A2-BDA0-70A7179AF0F3'
){

sql <- paste0("select  FName   from rds_hr_organizations where forgid <>1 order by fnumber")
data <- tsda::sql_select2(token = dms_token,sql = sql)
FName = data$FName
res <- tsdo::vect_as_list(FName)
return(res)

}
