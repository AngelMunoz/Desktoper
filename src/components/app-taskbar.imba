import './app-taskbar.css'
const start-icon = require('../images/start-icon.png');

export tag app-taskbar

    prop windows
    prop programs

    def render
        <self.taskbar :tap=(do trigger('closestart'))>
            <section.start :tap.stop=(do trigger('openstart'))>
                <button.start-btn> <img.start-icon src=start-icon>
            <section.apps>

            <section.tray>