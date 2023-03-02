function titleize(names, cb) {
    let titled = names.map (function(el){
        el[0].toUpperCase() + el.slice().toLowercase()
    })

    titled.forEach((el) => cb(el))
}

