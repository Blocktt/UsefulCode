## Export data ####
# df_object <- myData
# wd <- getwd()
# myDate <- format(Sys.Date(), "%Y%m%d")
# output.dir <- "Output_Data"
# results.dir <- paste0("/Example_Results_Folder_",myDate,"/")

write.table(df_object, file.path(wd, output.dir, results.dir
                                      , paste0("Output_File_Name_"
                                               ,myDate, ".csv"))
            , row.names = FALSE, sep = ",", na = "")
