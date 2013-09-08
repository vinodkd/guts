// var fs = require('fs');
// var mdParser = require('node-markdown').Markdown;

// var fileContents = fs.readFileSync(process.argv[2]).toString();
// console.log(mdParser(fileContents));

var fs = require('fs');
var mdParser = require('marked');

mdParser.setOptions({
  gfm: true,
  // highlight: function (code, lang, callback) {
  //   pygmentize({ lang: lang, format: 'html' }, code, function (err, result) {
  //     if (err) return callback(err);
  //     callback(null, result.toString());
  //   });
  // },
  tables: true,
  breaks: false,
  pedantic: false,
  sanitize: false,
  smartLists: true,
  smartypants: false,
  langPrefix: 'lang-'
});

var fileContents = fs.readFileSync(process.argv[2]).toString();
console.log(mdParser(fileContents));
