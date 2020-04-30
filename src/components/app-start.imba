import './app-start.css'
import { app-program } from './app-program'

export tag app-start

    prop programs

    def render
        <self.app-start>
            for program in @programs
                <app-program program=program>
