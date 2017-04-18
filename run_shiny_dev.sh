
run_shiny_app () {
    export R_LIBS="library"
    Rscript app.R &
    APP_PID=$!
}

run_shiny_app

inotifywait -mrq ./ --timefmt '%H:%M:%S' --format '[%T]: %e %f' -e create -e delete -e modify -e move \
    | while read event file; do

    echo $event $file
    kill $APP_PID
    run_shiny_app

done
