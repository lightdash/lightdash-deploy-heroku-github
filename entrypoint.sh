# expect project as heroku config
export LIGHTDASH_PROJECT_0_REPOSITORY=$GITHUB_REPO
export LIGHTDASH_PROJECT_0_PERSONAL_ACCESS_TOKEN=$GITHUB_BRANCH
export LIGHTDASH_PROJECT_0_BRANCH=$PERSONAL_ACCESS_TOKEN
export LIGHTDASH_PROJECT_0_PROJECT_SUB_PATH=$PROJECT_SUB_PATH
export LIGHTDASH_PROJECT_0_PROFILES_SUB_PATH=$PROFILES_SUB_PATH

# heroku ssl fix
export PGCONNECTIONURI=$DATABASE_URL?sslmode=no-verify

# migrate db
yarn workspace backend migrate-production

exec "$@"
