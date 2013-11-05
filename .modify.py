#!/usr/bin/env python

with open('index.js', 'r') as f:
    content = f.read()
    content = content.replace('window.jQuery', 'jQuery');
    content = '\n'.join([
        "var jQuery = require('jquery')",
        content,
        "module.exports = jQuery;"
    ])

with open('index.js', 'w') as f:
    f.write(content)

with open('bootstrap.css', 'r') as f:
    content = f.read()
    content = content.replace('../fonts/', 'fonts/');

with open('bootstrap.css', 'w') as f:
    f.write(content)
