import './app.css'

import { app-desktop } from '../components/app-desktop'
import { app-taskbar } from '../components/app-taskbar'
import { app-start } from '../components/app-start'

export tag App

	def onminimize win
		console.log win

	def onmaximize win
		console.log win

	def onrestore win
		console.log win

	def onalert data
		console.log data

	def onchangebackground url
		console.log url

	def onaddicon icon
		console.log icon

	def ondelete icon
		console.log icon

	def onupdateicon icon
		console.log icon

	def onopenstart
		console.log 'openstart'
		data.isStartOpen = !data.isStartOpen

	def onclosestart
		console.log 'closestart'
		if data.isStartOpen
			data.isStartOpen = false

	def onstartprogram program
		console.log 'startprogram', program

	def render
		<self.desktoper css:background-image="url('{data.backgroundUrl}')">
			if data.isStartOpen
				<app-start programs=data.programs>
			<app-desktop windows=data.windows icons=data.icons includeUnsplashNotice=data.includeUnsplashNotice>
			<app-taskbar windows=data.windows programs=data.programs>