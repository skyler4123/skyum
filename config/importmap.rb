# Pin npm packages by running ./bin/importmap

pin "application", preload: true
pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true
pin "@hotwired/stimulus", to: "stimulus.min.js", preload: true
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js", preload: true
pin_all_from "app/javascript/controllers", under: "controllers"
pin_all_from "app/components", under: "controllers", to: "components", preload: true
pin "dayjs", to: "https://ga.jspm.io/npm:dayjs@1.11.9/dayjs.min.js"
pin "flatpickr", to: "https://ga.jspm.io/npm:flatpickr@4.6.13/dist/esm/index.js"
pin "sortablejs", to: "https://ga.jspm.io/npm:sortablejs@1.15.0/modular/sortable.esm.js"
pin "trix", to: "https://ga.jspm.io/npm:trix@2.0.5/dist/trix.esm.min.js"
pin "jspdf", to: "https://ga.jspm.io/npm:jspdf@2.5.1/dist/jspdf.es.min.js"
pin "@babel/runtime/helpers/asyncToGenerator", to: "https://ga.jspm.io/npm:@babel/runtime@7.22.15/helpers/esm/asyncToGenerator.js"
pin "@babel/runtime/helpers/defineProperty", to: "https://ga.jspm.io/npm:@babel/runtime@7.22.15/helpers/esm/defineProperty.js"
pin "@babel/runtime/helpers/typeof", to: "https://ga.jspm.io/npm:@babel/runtime@7.22.15/helpers/esm/typeof.js"
pin "canvg", to: "https://ga.jspm.io/npm:canvg@3.0.10/lib/index.es.js"
pin "core-js/modules/", to: "https://ga.jspm.io/npm:core-js@3.32.2/modules/"
pin "dompurify", to: "https://ga.jspm.io/npm:dompurify@2.4.7/dist/purify.js"
pin "fflate", to: "https://ga.jspm.io/npm:fflate@0.4.8/lib/index.js"
pin "fflate/lib/node-worker.js", to: "https://ga.jspm.io/npm:fflate@0.4.8/lib/worker.js"
pin "html2canvas", to: "https://ga.jspm.io/npm:html2canvas@1.4.1/dist/html2canvas.js"
pin "performance-now", to: "https://ga.jspm.io/npm:performance-now@2.1.0/lib/performance-now.js"
pin "process", to: "https://ga.jspm.io/npm:@jspm/core@2.0.1/nodelibs/browser/process-production.js"
pin "raf", to: "https://ga.jspm.io/npm:raf@3.4.1/index.js"
pin "rgbcolor", to: "https://ga.jspm.io/npm:rgbcolor@1.0.1/index.js"
pin "stackblur-canvas", to: "https://ga.jspm.io/npm:stackblur-canvas@2.6.0/dist/stackblur-es.js"
pin "svg-pathdata", to: "https://ga.jspm.io/npm:svg-pathdata@6.0.3/lib/SVGPathData.module.js"
