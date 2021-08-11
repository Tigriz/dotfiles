module.exports = (config, Ferdi) => {
    setTimeout( () => {
      console.log("Expanding groups...")
      document.querySelectorAll(".mx_CustomRoomTagPanel_scroller > .mx_AccessibleButton").forEach( el => el.click() );
    }, 10000);
}
