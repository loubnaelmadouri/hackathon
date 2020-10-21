#Création du fichier description
usethis::edit_file("DESCRIPTION")
#License
usethis::use_gpl3_license(name = "Loubna El Madouri")

#On édite la documentation avec le package oxygen
usethis::use_roxygen_md()

#Crée une page d'aide pour mon package plutot que pour chaque fonction
usethis::use_package_doc()

usethis::use_build_ignore("dev_history.R")
usethis::use_build_ignore("hackathon.Rproj")
usethis::use_build_ignore("README.html")
usethis::use_git_ignore("README.html")
usethis::use_build_ignore("README.md")

#crée une fonction qui ne sert pas mais fait l'accueil du site web
usethis::use_r("hackathon-package")

usethis::use_r("makeTop")

#Génère la documentation
devtools::document()
attachment::att_amend_desc() #ajoute les packages dans la description

devtools::check()

devtools::install()

usethis::use_readme_rmd()

#Générer le mark down chaque fois que le readme est édité
rmarkdown::render("README.Rmd")

#création site web en md du package
usethis::use_pkgdown()

pkgdown::build_site()
