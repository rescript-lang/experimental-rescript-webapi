import data from "./dom-dump.json"

const callback =
    Object.entries(data.callbackFunctions.callbackFunction)
        .find(([name, cf]) => {
            if (Array.isArray(cf.signature)) {
                return cf.signature.some(s => {
                    s.param.some(p => p.isOptional);
                });
            }

            return false;
        });

console.log(callback);