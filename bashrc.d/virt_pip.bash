# pip should only run if there is a virtualenv currently activated
export PIP_REQUIRE_VIRTUALENV=true
# cache pip-installed packages to avoid re-downloading
#export PIP_DOWNLOAD_CACHE=$HOME/.pip/cache # commented out 20151029 as it's now depricated

gpip(){
   PIP_REQUIRE_VIRTUALENV="" pip "$@"
}
