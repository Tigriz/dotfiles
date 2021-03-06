"use strict";
/*const {remote} = require('electron');
const webContents = remote.getCurrentWebContents();
const {session} = webContents;*/

var _path = _interopRequireDefault(require("path"));

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }

module.exports = Franz => {
  /*session.setPermissionCheckHandler((webContents, permission) => {
    console.log(permission);
    if(permission=='media'){
      return true;
    }
    return false;
  });
  session.setPermissionRequestHandler((webContents, permission, callback) => {
    console.log(permission);
    if(permission=='media'){
      callback(true);
    }
    callback(false);
  });*/

  const getMessages = function getMessages() {
  const direct = document.querySelector('[class*="guilds-"]').querySelectorAll('[class^="numberBadge-"]').length;
	
	var indirect = 0;
	var guilds = document.querySelector("[data-ref-id=guildsnav]");
	if(guilds != null) {
		var channelPills = [].slice.call(guilds.querySelectorAll("[class*=item-2hkk8m]"));
		indirect += channelPills.filter(y => y.clientHeight == 8).length;
	
		var activeWindow = channelPills.find(y => y.clientHeight == 40);
		if(activeWindow != null) {
			var unreadChannels = document.querySelector("[class*=modeUnread]");
			
			if(unreadChannels != null)
				indirect++;
		}
	}
	
    Franz.setBadge(direct, indirect);
  };

  Franz.loop(getMessages);
  Franz.injectCSS(_path.default.join(__dirname, 'service.css'));
};
