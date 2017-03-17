module.exports = {
    files: [
        'dist/*.(html|css|js)'
    ],
    https: true,
    port: process.env.BS_PORT,
    server: ['dist'],
    middleware: [
        require('connect-history-api-fallback')()
    ]
};
