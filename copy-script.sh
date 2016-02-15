#!/usr/bin/env node

var exec = require('child_process').exec;

const FILE_MAP = {
  '.bashrc': '~/.bashrc',
  '.gitconfig': '~/.gitconfig',
  '.inputrc': '~/.inputrc',
  'config.cson': '~/.atom/config.cson',
  'git-completion.bash': '~/bin/git-completion.bash',
  'git-prompt.sh': '~/bin/git-prompt.sh',
  'keymap.cson': '~/.atom/keymap.cson',
  'snippets.cson': '~/.atom/snippets.cson'
};

var fetchPromised = (src, dest) => new Promise((resolve, reject) => { moveFileAsync(src, dest, resolve, reject); });

Promise.all(Object.keys(FILE_MAP).map(x => fetchPromised(x, FILE_MAP[x])));

function moveFileAsync(src, dest, onSuccess, onError) {
  exec(`cp ${src} ${dest}`, (error, stdout, stderr) => {
    if (error) {
      console.log(error.message.match(/cp\:.*/g)[0]);
      onError(error);
    }
    else {
      var success = `Moving from "${src}" to "${dest}"...`;
      console.log(success);
      onSuccess(success);
    }
  });

}
