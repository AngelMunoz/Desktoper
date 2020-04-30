import 'bulma/css/bulma.min.css';
import './index.css'
import { App } from './pages/app'
import { AppStore } from './stores/app-store'

const appState = AppStore.new()

Imba.mount <App[appState]>
