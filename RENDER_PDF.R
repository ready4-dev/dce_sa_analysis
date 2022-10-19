# Prior to rendering the programs, you must first specify details of the local paths for reading / writing data:
params_ls = list(X = list(paths_ls = list(input_data_dir_1L_chr = "PROVIDE DETAILS HERE",
                                          output_data_dir_1L_chr = "PROVIDE DETAILS HERE",
                                          raw_data_fl_nms_chr = c("PROVIDE DETAILS HERE"),
                                          Models = "PROVIDE DETAILS HERE",
                                          Records = "PROVIDE DETAILS HERE",
                                          Replication = "PROVIDE DETAILS HERE",
                                          qltv_ax_fl_nms_chr = c("DCE pre-consented 20190718_xls.xlsx",
                                                                 "DCE hacked 20190718_xls.xlsx",
                                                                 "DCE protected 20190718_xls.xlsx"))),
                 eval_1L_lgl = T)
# params_ls$eval_1L_lgl <- F
# To render the consolidated analysis program:
rmarkdown::render("Parent_PDF/Consolidated.RMD",#"Parent_HTML/Consolidated.RMD",
                  output_format = NULL,
                  params = params_ls, 
                  output_file = "CAP.pdf",#"CAP.html",
                  output_dir = "PDFs"#"HTML"
                  )
rmarkdown::render("Parent_HTML/Consolidated.RMD",
                  output_format = NULL,
                  params = params_ls, 
                  output_file = "CAP.html",
                  output_dir = "HTML")
# To render the subroutines that comprise the analysis program:
rmarkdown::render("Parent_PDF/Part_1_Preprocess_Data.RMD",
                  output_format = NULL,
                  params = params_ls, 
                  output_file = "Pre_Process_Data.pdf",
                  output_dir = "PDFs")
rmarkdown::render("Parent_PDF/Part_2_Describe_Data.RMD",
                  output_format = NULL,
                  params = params_ls, 
                  output_file = "Describe_Data.pdf",
                  output_dir = "PDFs")
rmarkdown::render("Parent_PDF/Part_3_Fit_Models.RMD",
                  output_format = NULL,
                  params = params_ls, #
                  output_file = "Fit_Models.pdf",
                  output_dir = "PDFs")
rmarkdown::render("Parent_PDF/Part_4_Use_Models.RMD",
                  output_format = NULL,
                  params = params_ls, #
                  output_file = "Use_Models.pdf", # Omit reproducibility section
                  output_dir = "PDFs")

# To render the program that makes the design matrix:
rmarkdown::render("Parent_PDF/Make_Design_Ls.RMD", # This subroutine needs to be relocated into the design program.
                  output_format = NULL,
                  params = params_ls, 
                  output_file = "Make_Design_Ls.pdf",
                  output_dir = "PDFs")
# To render the program that creates a consolidated Qualitative Assessment Table:
rmarkdown::render("Parent_PDF/Make_Consolidated_Qltv_Ds.RMD",
                  output_format = NULL,
                  params = params_ls, 
                  output_file = "Make_Consolidated_Qltv_Ds.pdf",
                  output_dir = "PDFs")
# To render the program that reports results
rmarkdown::render("Parent_PDF/Report_Results.RMD",
                  output_format = NULL,
                  params = params_ls, #
                  output_file = "Report_Results.pdf", # Omit reproducibility section
                  output_dir = "PDFs")
rmarkdown::render("Parent_HTML/Report_Results.RMD",
                  output_format = NULL,
                  params = params_ls, #
                  output_file = "Report_Results.html", # Omit reproducibility section
                  output_dir = "HTML")