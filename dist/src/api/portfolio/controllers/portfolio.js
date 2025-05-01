"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const strapi_1 = require("@strapi/strapi");
exports.default = strapi_1.factories.createCoreController('api::portfolio.portfolio', ({ strapi }) => ({
    async find(ctx) {
        const response = await super.find(ctx);
        if (Array.isArray(response.data)) {
            response.data = response.data.map(entry => {
                var _a, _b, _c;
                const attributes = (_a = entry === null || entry === void 0 ? void 0 : entry.attributes) !== null && _a !== void 0 ? _a : {};
                return {
                    ...entry,
                    attributes: {
                        ...attributes,
                        content: String((_b = attributes.content) !== null && _b !== void 0 ? _b : ''),
                        opis: String((_c = attributes.opis) !== null && _c !== void 0 ? _c : ''),
                    },
                };
            });
        }
        return response;
    },
    async findOne(ctx) {
        var _a, _b, _c;
        const response = await super.findOne(ctx);
        if ((_a = response === null || response === void 0 ? void 0 : response.data) === null || _a === void 0 ? void 0 : _a.attributes) {
            response.data.attributes.content = String((_b = response.data.attributes.content) !== null && _b !== void 0 ? _b : '');
            response.data.attributes.opis = String((_c = response.data.attributes.opis) !== null && _c !== void 0 ? _c : '');
        }
        return response;
    },
}));
