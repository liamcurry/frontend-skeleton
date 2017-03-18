import Elm from 'elm';

document.addEventListener('DOMContentLoaded', startApp);

function startApp() {
    const flags = getFlags();
    console.log('Initializing with flags:', flags);
    const app = Elm.Main.fullscreen(flags);
    app.ports.setStored.subscribe(setStored);
}

function getFlags() {
    return {
        now: Date.now(),
        lang: navigator.language || 'en',
        stored: getStored(),
    };
}

const storedId = 'model';

function getStored() {
    const storedRaw = localStorage.getItem(storedId);
    try {
        return storedRaw ? JSON.parse(storedRaw) : null;
    } catch (e) {
        console.warn('Invalid JSON stored.');
    }
}

function setStored(newStored) {
    localStorage.setItem(storedId, JSON.stringify(newStored));
}

const root = document.querySelector('html');
root.classList.remove('JsDisabled');
root.classList.add('JsEnabled');
