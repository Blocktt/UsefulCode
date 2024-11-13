# UsefulCode
Useful code for useful people!

UsefulCode is a repository for R code examples (i.e., snippets) to support your data analysis projects. Each example addresses a specific problem, making it easy to find the solution you need. If you have useful code to share, feel free to suggest an example through a Pull Request.

Currently, R code examples don't need to be formatted as 'reprex' (reproducible examples). Below, you'll find a description of each script and its intended purpose.

## Script_Starter.R
The Script_Starter.R file represents what we typically use as a "starter section" for each new R script in any of our projects. It is comprised of 4 components:
* **Header**: The header can be as many lines long as necessary, but we recommend 6 lines at a minimum. The header serves to define the purpose of the script, specify the author, creation date, and most recent update date, and finally the R version used to write the script. Altogether, the header is useful to remind yourself or others the context in which the script was written.
* **Libraries**: All R packages that we will use for analyses are imported in this section. They are never called upon within the script itself.
* **Directories**: We always work in R projects, so the "working directory" is always the folder in which the project is located. We declare the working directory, define the date, and specify an input directory, output directory, and results directory. The results directory is regenerated each day (by defining the date), that way, a new folder is created if the script is re-executed to avoid any data being overwritten. This is super helpful as analyses progress.
* **Specify and read input files**: We first specify the file names that we will import in one section and then read them in below. This makes the code easier to read by avoiding code that wraps or requires the user to scroll to understand where the data are coming from.

We find that this starter section avoids any confusion as to what the script does, what packages it uses, where data are imported and exported, and which files are used for analyses.

## Export_Data.R
The Export_Data.R file represents what we often use to export data (in this case a dataframe) out of R, usually to a .CSV file. We are almost always working within an R project, so we specify an output file path using multiple arguments including **wd**, **output.dir**, and **results.dir**. We also specify the date which prevents older files being overwritten if code is updated in the future.

We prefer to use the base R function *write.table* because it's quite flexible for our uses and allows us to export data in a variety of formats including CSV and TSV. Other alternatives include the *readr::write_csv* or *readr::write_tsv* that work well with the tidyverse. Honestly, I don't notice much of a difference in performance even with large datasets. Lastly, you could consider exporting to Microsoft Excel using the *xlsx::write.xlsx* function. 
