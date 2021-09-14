const process = require("process")
const path = require("path")
const fs = require("fs")

const walkUpUntil = (fileToFind, startPath=null)=> {
    let here = startPath || process.cwd()
    if (!path.isAbsolute(here)) {
        here = path.join(process.cwd(), fileToFind)
    }
    while (1) {
        let checkPath = path.join(here, fileToFind)
        if (fs.existsSync(checkPath)) {
            return checkPath
        }
        // reached the top
        if (here == path.dirname(here)) {
            return null
        } else {
            // go up a folder
            here =  path.dirname(here)
        }
    }
}

module.exports = { walkUpUntil }