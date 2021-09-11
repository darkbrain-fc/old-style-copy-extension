var isChrome = window.chrome;
var extension;

if (isChrome) {
  extension = chrome;
} else {
  extension = browser.runtime.connect({name:"old-style"});
}
document.addEventListener('keydown', function(event) {
  if (event.ctrlKey && !event.altKey && !event.shiftKey && event.key === 'Insert') {
    //console.log('old-style-copy');
    extension.runtime.sendMessage('Ctrl+c');
  } else if (!event.ctrlKey && !event.altKey && event.shiftKey && event.key === 'Insert') {
    //console.log('old-style-paste');
    extension.runtime.sendMessage('Ctrl+v');
  } else if (!event.ctrlKey && !event.altKey && event.shiftKey && event.key === 'Delete') {
    //console.log('old-style-cut');
    extension.runtime.sendMessage('Ctrl+x');
  }
}, true);
