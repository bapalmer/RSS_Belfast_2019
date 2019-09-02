library(holepunch)
write_compendium_description(package = "RSS_Belfast_2019", 
                             description = "A FAIRified R workflow")
# to write a description, with dependencies. Be sure to fill in placeholder text

write_dockerfile(maintainer = "Brendan Palmer", r_date = "2019-03-11") 
# To write a Dockerfile. It will automatically pick the date of the last 
# modified file, match it to that version of R and add it here. You can 
# override this by passing r_date to some arbitrary date
# (but one for which a R version exists).

generate_badge() # This generates a badge for your readme.

# ----------------------------------------------
# At this time 🙌 push the code to GitHub 🙌
# ----------------------------------------------

# And click on the badge or use the function below to get the build 
# ready ahead of time.
build_binder()
# 🤞🚀

# Alternate setup method
# If for some reason you really don't want to set up your project as a compendium, then set it up by creating runtime.txt and install.R. This build will take a very long time.

# Note that this particular approach will be super slow.
# And take just as long everytime you edit your code
library(holepunch)
write_install() # Writes install.R with all your dependencies
write_runtime() # Writes the date your code was last modified. Can be overridden.
generate_badge() # Generates a badge you can add to your README. Clicking badge will launch the Binder.
# ----------------------------------------------
# At this time 🙌 push the code to GitHub 🙌
# ----------------------------------------------
# Then click the badge on your README or run
build_binder() # to kick off the build process
# 🤞🚀