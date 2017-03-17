import Elm from 'elm';

document.addEventListener('DOMContentLoaded', () => {
    const flags = {
        now: Date.now(),
        lang: navigator.language || 'en',
    };

    console.log('Initializing Elm app with flags:', flags);

    Elm.Main.fullscreen(flags);
});
