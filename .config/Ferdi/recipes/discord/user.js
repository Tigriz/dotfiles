module.exports = (config, Ferdi) => {
  if(config.id == "c861d523-30f8-4117-b481-5ddedf37f52f"){
    function applycss(css){
      var head = document.getElementsByTagName('head')[0];
      var s = document.createElement('style');
      s.setAttribute('type', 'text/css');
      s.appendChild(document.createTextNode(css));
      head.appendChild(s);
    }

    applycss(`
      form, div[aria-label="Create Invite"], div[aria-label="Add Reaction"], #guild-header-popout-leave, #guild-header-popout-invite-people, #user-context-mention, #user-context-add-friend, #user-context-message-user, #message-actions-quote, button[type="button"][class*="colorGreen"], section[aria-label="User area"]{ display: none !important}
      button[type="submit"], div[aria-label="Reactions"], div[aria-label*="voice"]{ pointer-events: none }
    `);

    document.body.onpaste = () => false;
  }
}
