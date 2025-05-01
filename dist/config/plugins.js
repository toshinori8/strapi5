"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.default = ({ env }) => ({
    'slugify': {
        enabled: true,
        config: {
            contentTypes: {
                article: {
                    field: 'slug',
                    references: 'title',
                },
            },
        },
    },
});
