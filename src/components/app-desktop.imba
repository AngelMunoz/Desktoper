import './app-desktop.css'

tag unsplash-notice

    def render
        <self.unsplash-notice>
            <p>
                "Background by"
                <a.is-dark target="_blank" rel="noreferrer noopener" href="https://unsplash.com"> " Unsplash"

export tag app-desktop
    prop windows
    prop icons
    prop background
    prop includeUnsplashNotice

    def render
        <self.desktop>
            if @includeUnsplashNotice
                <unsplash-notice>