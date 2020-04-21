___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "displayName": "Coveo Analytics",
  "description": "The Coveo Analytics template allows you to log events to Coveo Usage Analytics.",
  "categories": [
    "ANALYTICS",
    "PERSONALIZATION",
    "SESSION_RECORDING"
  ],
  "securityGroups": [],
  "id": "cvt_temp_public_id",
  "type": "TAG",
  "version": 1,
  "brand": {
    "thumbnail": "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAFQSURBVFhHxZfRTcMwEIbPLTxUCkJs0IcwABMAm8Ai2GaCsEE6CWUD3qFS2KColXhoKnMBH2qpk8Z2bH9SlPik6P9zvjs5sOK5wOsGEsHWPFf6cTaGjZjIqvpdx2HHABHXiMEAouBTMShqqIsLWS11NAhmA0QEIyN9N8PgnAHwUzh5XfPLOx0dlO4MHPKBr4hMvpV67Y2tAeIFXxJn8n2u1864GiC8jXTXwHGusUaesT7KLz6d6pgVvhn4h/0MGdgAYtm6wxsgehrxrYF2es6QcBk4xDhDYhog9lo33Ba0s/fBETOgKpQW2eNipgM/RDBgFiZCbsFSofAGtldt4g0hMtAIFzWrnxIMIlWOYSsTjGJ7YcK3Bubo/jaTi3vXQ6xrBhphmeBA0t1SLvQ0MLwwcawGevWyD20ZsOplHwwG3FvKhR0DcYX/WD3kPN3vOcA3SzrpBQgaw0IAAAAASUVORK5CYII\u003d",
    "displayName": "coveo",
    "id": "github.com_coveo"
  },
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "macrosInSelect": false,
    "selectItems": [
      {
        "displayValue": "Send custom Coveo event",
        "value": "custom"
      },
      {
        "displayValue": "Send page view",
        "value": "view"
      },
      {
        "value": "event",
        "displayValue": "Send event"
      },
      {
        "displayValue": "Initialize the Coveo Analytics script",
        "value": "load"
      }
    ],
    "displayName": "Action",
    "simpleValueType": true,
    "name": "eventType",
    "type": "SELECT",
    "help": "The action to perform when the tag is triggered (see \u003ca href\u003d\"https://docs.coveo.com/en/2926/\"\u003eLogging Coveo Events From Google Tag Manager\u003c/a\u003e)."
  },
  {
    "name": "Event Description",
    "type": "GROUP",
    "subParams": [
      {
        "enablingConditions": [
          {
            "paramName": "eventType",
            "type": "EQUALS",
            "paramValue": "custom"
          }
        ],
        "displayName": "Custom events can be leveraged in Coveo UA reports and by Coveo ML Event Recommendation models.",
        "name": "Custom Coveo Event Type Description",
        "type": "LABEL"
      },
      {
        "enablingConditions": [
          {
            "paramName": "eventType",
            "type": "EQUALS",
            "paramValue": "load"
          }
        ],
        "displayName": "This action should be performed once per page before logging events to Coveo Usage Analytics (see \u003ca href\u003d\"https://docs.coveo.com/en/2926/#loading-the-coveo-analytics-script\"\u003eLoading the Coveo Analytics Script\u003c/a\u003e).",
        "name": "Load Event Type Description",
        "type": "LABEL"
      },
      {
        "enablingConditions": [
          {
            "paramName": "eventType",
            "type": "EQUALS",
            "paramValue": "view"
          }
        ],
        "displayName": "Page view events are leveraged by Coveo ML Event Recommendation models (see \u003ca href\u003d\"https://docs.coveo.com/en/1886/\"\u003eCoveo Machine Learning Event Recommendations Deployment Overview\u003c/a\u003e).",
        "name": "View Event Type Description",
        "type": "LABEL"
      },
      {
        "type": "LABEL",
        "name": "Event Type Description",
        "displayName": "Events are used to send the data accumulated in the data layer or with other commands on the page.",
        "enablingConditions": [
          {
            "paramName": "eventType",
            "paramValue": "event",
            "type": "EQUALS"
          }
        ]
      }
    ]
  },
  {
    "enablingConditions": [
      {
        "paramName": "eventType",
        "type": "EQUALS",
        "paramValue": "custom"
      }
    ],
    "displayName": "Event metadata",
    "name": "Custom Event Metadata",
    "groupStyle": "ZIPPY_OPEN",
    "type": "GROUP",
    "subParams": [
      {
        "valueValidators": [
          {
            "type": "NON_EMPTY"
          }
        ],
        "help": "The broad category to associate the custom event with (e.g., \u003ccode\u003ePage Navigation\u003c/code\u003e).",
        "displayName": "Event type",
        "simpleValueType": true,
        "name": "customEventType",
        "type": "TEXT"
      },
      {
        "help": "A concise description of the specific action that triggered the custom event (e.g., \u003ccode\u003eClick Help Button\u003c/code\u003e).",
        "valueValidators": [
          {
            "type": "NON_EMPTY"
          }
        ],
        "displayName": "Event value",
        "simpleValueType": true,
        "name": "customEventValue",
        "type": "TEXT"
      }
    ]
  },
  {
    "enablingConditions": [
      {
        "paramName": "eventType",
        "type": "EQUALS",
        "paramValue": "custom"
      }
    ],
    "displayName": "Document metadata",
    "name": "Document Metadata",
    "groupStyle": "ZIPPY_OPEN",
    "type": "GROUP",
    "subParams": [
      {
        "help": "The language of the current page. Must be a valid \u003ca href\u003d\u0027https://en.wikipedia.org/wiki/List_of_ISO_639-1_codes\u0027\u003eISO-639-1 code\u003c/a\u003e (e.g., \u003ccode\u003een\u003c/code\u003e)",
        "valueValidators": [
          {
            "type": "NON_EMPTY"
          }
        ],
        "displayName": "Language",
        "simpleValueType": true,
        "name": "language",
        "type": "TEXT"
      },
      {
        "help": "(Optional) The URL of the current page. Defaults to \u003ccode\u003ewindow.location\u003c/code\u003e.",
        "displayName": "Location",
        "simpleValueType": true,
        "name": "location",
        "type": "TEXT"
      },
      {
        "help": "(Optional) The title of the current page. Defaults to \u003ccode\u003edocument.title\u003c/code\u003e.",
        "displayName": "Title",
        "simpleValueType": true,
        "name": "title",
        "type": "TEXT"
      },
      {
        "help": "(Optional) Whether the current end user is anonymous. Allowed values are \u003ccode\u003etrue\u003c/code\u003e and \u003ccode\u003efalse\u003c/code\u003e. Defaults to \u003ccode\u003efalse\u003c/code\u003e.",
        "displayName": "Is anonymous",
        "simpleValueType": true,
        "name": "isAnonymous",
        "type": "TEXT"
      },
      {
        "displayName": "Username",
        "simpleValueType": true,
        "name": "username",
        "type": "TEXT"
      },
      {
        "help": "(Optional) A human-readable name to display in usage analytics reports for the current user (e.g., \u003ccode\u003eAlice Smith\u003c/code\u003e).",
        "enablingConditions": [
          {
            "paramName": "username",
            "type": "PRESENT",
            "paramValue": ""
          }
        ],
        "displayName": "User display name",
        "simpleValueType": true,
        "name": "userDisplayName",
        "type": "TEXT"
      }
    ]
  },
  {
    "enablingConditions": [
      {
        "paramName": "eventType",
        "type": "EQUALS",
        "paramValue": "custom"
      }
    ],
    "displayName": "Custom metadata (leverageable by Coveo ML and in Coveo UA reports)",
    "name": "Custom Data",
    "groupStyle": "ZIPPY_OPEN",
    "type": "GROUP",
    "subParams": [
      {
        "name": "customDataTable",
        "simpleTableColumns": [
          {
            "valueValidators": [
              {
                "type": "NON_EMPTY"
              }
            ],
            "defaultValue": "",
            "displayName": "Key",
            "name": "key",
            "isUnique": true,
            "type": "TEXT"
          },
          {
            "valueValidators": [
              {
                "type": "NON_EMPTY"
              }
            ],
            "defaultValue": "",
            "displayName": "Value",
            "name": "value",
            "type": "TEXT"
          },
          {
            "selectItems": [
              {
                "displayValue": "Coveo UA reporting",
                "value": "usageanalytics"
              },
              {
                "displayValue": "Coveo ML context",
                "value": "ml"
              },
              {
                "displayValue": "All",
                "value": "all"
              }
            ],
            "defaultValue": "usageanalytics",
            "displayName": "Purpose",
            "name": "purpose",
            "type": "SELECT"
          }
        ],
        "type": "SIMPLE_TABLE"
      },
      {
        "name": "customDataObjects",
        "simpleTableColumns": [
          {
            "macrosInSelect": true,
            "selectItems": [],
            "valueValidators": [],
            "defaultValue": "",
            "help": "A JavaScript object to merge with the other specified custom metadata.",
            "displayName": "Object to merge",
            "name": "object",
            "type": "SELECT"
          },
          {
            "selectItems": [
              {
                "displayValue": "Usage Analytics Reporting",
                "value": "usageanalytics"
              },
              {
                "displayValue": "Machine Learning Context",
                "value": "ml"
              },
              {
                "displayValue": "Both",
                "value": "all"
              }
            ],
            "defaultValue": "usageanalytics",
            "displayName": "Purpose",
            "name": "purpose",
            "type": "SELECT"
          }
        ],
        "type": "SIMPLE_TABLE"
      }
    ]
  },
  {
    "displayName": "Configuration",
    "name": "Configuration",
    "groupStyle": "ZIPPY_OPEN",
    "type": "GROUP",
    "subParams": [
      {
        "help": "An API key granting only the \u003cstrong\u003eUsage Analytics - Push\u003c/strong\u003e privilege in the target Coveo Cloud organization (see \u003ca href\u003d\"https://docs.coveo.com/en/1718/\"\u003eAdding and Managing API Keys\u003c/a\u003e).",
        "valueValidators": [
          {
            "enablingConditions": [
              {
                "paramName": "eventType",
                "type": "EQUALS",
                "paramValue": "load"
              }
            ],
            "type": "NON_EMPTY"
          }
        ],
        "displayName": "API key",
        "simpleValueType": true,
        "name": "apiKey",
        "type": "TEXT"
      },
      {
        "macrosInSelect": true,
        "selectItems": [
          {
            "displayValue": "Coveo Cloud",
            "value": "https://usageanalytics.coveo.com/"
          },
          {
            "displayValue": "Coveo Cloud (HIPAA)",
            "value": "http://usageanalyticshipaa.cloud.coveo.com/"
          }
        ],
        "valueValidators": [],
        "help": "The target Coveo Cloud platform environment.",
        "displayName": "Analytics endpoint",
        "simpleValueType": true,
        "name": "analyticsEndpoint",
        "type": "SELECT"
      },
      {
        "help": "The version of the script to load",
        "valueValidators": [
          {
            "args": [
              "\\d(\\.\\d)?(\\.\\d)?(\\-[a-z0-9]+)?"
            ],
            "enablingConditions": [
              {
                "paramName": "scriptVersion",
                "type": "PRESENT",
                "paramValue": ""
              }
            ],
            "errorMessage": "You must use the format \u003ccode\u003eMAJOR.MINOR\u003c/code\u003e (e.g., \u003ccode\u003e1.0\u003c/code\u003e)",
            "type": "REGEX"
          }
        ],
        "displayName": "Script version",
        "simpleValueType": true,
        "name": "scriptVersion",
        "type": "TEXT",
        "valueHint": "2.0"
      }
    ]
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

const log = require('logToConsole');
const isLoadEventType = () => data.eventType === "load";

const validateVariablesToLoadScript = () => {
  const COMMON_ERROR_MESSAGE = "Coveo Analytics Script could not be initialized.\n";

  const missingKeys = ['analyticsEndpoint', 'apiKey'].filter(key => !data[key]);
  const hasMissingKeys = missingKeys.length > 0;
  if (missingKeys.length > 0) {
    if (isLoadEventType()) {
      log(COMMON_ERROR_MESSAGE + "The \"Configuration\" section is missing the following keys: " + missingKeys.join(", "));
    } else {
      log(COMMON_ERROR_MESSAGE + "You must either provide the variables in the \"Configuration\" section to the first Coveo Analytics tag or add the \"Load\" event type before this tag.");
    }
    return false;
  }

  return true;
};

const loadCoveoAnalyticsScript = (onSuccess) => {
  const injectScript = require("injectScript");
  const setInWindow = require("setInWindow");

  const createArgumentsQueue = require('createArgumentsQueue');
  const coveoua = createArgumentsQueue('coveoua', 'coveoua.q');
  const getTimestamp = require('getTimestamp');
  setInWindow('coveoua.t', getTimestamp(), true);

  coveoua("init", data.apiKey, data.analyticsEndpoint);
  coveoua("onLoad", function() {
    log('Coveo Analytics Initialized');
  });

  const scriptVersion = data.scriptVersion || "2";
  const url = "https://static.cloud.coveo.com/coveo.analytics.js/" + scriptVersion + "/coveoua.js";
  injectScript(url, onSuccess, data.gtmOnFailure, url);
};

const loadCoveoAnalyticsScriptIfNotLoaded = (onSuccess, onFailure) => {
  const copyFromWindow = require("copyFromWindow");
  const isLoaded = copyFromWindow("coveoua");

  if (!isLoaded) {
    if (!validateVariablesToLoadScript()) {
      onFailure();
    }
    loadCoveoAnalyticsScript(onSuccess);
  } else {
    onSuccess();
  }
};

const addToObject = function(obj) {
  for (let index in arguments) {
    const obj2 = arguments[index];
    for (let key in obj2) {
      if (obj2.hasOwnProperty(key)) {
        obj[key] = obj2[key];
      }
    }
  }
  return obj;
};

const generateCustomData = () => {
  const ensureObjectHasContextPrefix = (obj) => {
    const contextPrefix = "context_";
    const newObj = {};
    for (let key in obj) {
      const newKey = key.indexOf(contextPrefix) === 0 ? key : contextPrefix + key;
      newObj[newKey] = obj[key];
    }
    return newObj;
  };

  const rowIsForAll = (obj) => obj.purpose === 'all';
  const rowIsForUA = (obj) => obj.purpose === 'usageanalytics' || rowIsForAll(obj);
  const rowIsForML = (obj) => obj.purpose === 'ml' || rowIsForAll(obj);

  const customDataObject = {};

  if (!!data.customDataTable && data.customDataTable.length > 0) {
    const makeSafeTableMap = (table) => {
      const makeTableMap = require('makeTableMap');
      return table ? makeTableMap(table, 'key', 'value') : {};
    };

    const objForUsageAnalytics = makeSafeTableMap(data.customDataTable.filter(rowIsForUA));
    const objForContext = ensureObjectHasContextPrefix(
      makeSafeTableMap(data.customDataTable.filter(rowIsForML))
    );
    addToObject(customDataObject,
                objForUsageAnalytics,
                objForContext);
  }

  if (!!data.customDataObjects && data.customDataObjects.length > 0) {
    const getValidCustomDataObjectsFromArray = (objects) => {
      return objects.map(row => row.object).filter(obj => typeof obj === 'object');
    };

    getValidCustomDataObjectsFromArray(data.customDataObjects.filter(rowIsForUA))
      .forEach(obj => addToObject(customDataObject, obj));
    getValidCustomDataObjectsFromArray(data.customDataObjects.filter(rowIsForML))
      .map(ensureObjectHasContextPrefix)
      .forEach(obj => addToObject(customDataObject, obj));
  }

  return customDataObject;
};

const eventTypeMap = {
  custom: "custom"
};

const eventDataForTypeMap = {
  custom: {
    eventType: data.customEventType,
    eventValue: data.customEventValue,
    customData: {}
  }
};

const measurementProtocolTypeMap = {
  view: 'pageview',
  event: 'event'
};

const logWithMeasurementProtocol = () => {
  const copyFromDataLayer = require("copyFromDataLayer");
  const event = copyFromDataLayer('event');
  const ecommerce = copyFromDataLayer('ecommerce');

  const createArgumentsQueue = require('createArgumentsQueue');
  const coveoua = createArgumentsQueue('coveoua', 'coveoua.q');

  if (ecommerce) {
    const setAction = (action, metadata) => !!metadata ? coveoua("ec:setAction", action, metadata) : coveoua("ec:setAction", action);
    const addAllProductsIfDefined = (products) => !!products && products.forEach(product => coveoua("ec:addProduct", product));
    const addAllImpressionsIfDefined = (impressions) => !!impressions && impressions.forEach(impression => coveoua("ec:addImpression", impression));

    if (ecommerce.currencyCode) {
      coveoua("set", "currencyCode", ecommerce.currencyCode); 
    }

    const eventMapping = {
      "gtm.load": ["refund", "purchase", "detail"],
      "gtm.dom": ["refund", "purchase", "detail"],
      "addToCart": ["add"],
      "removeFromCart": ["remove"],
      "checkout": ["checkout"],
      "checkoutOption": ["checkout_option"],
      "productClick": ["click"],
      // Custom event type, in case you want to send them after "gtm.load" or "gtm.dom".
      "refund": ["refund"],
      "purchase": ["purchase"],
      "detailView": ["detail"],
      "impression": ["impression", "impressions"]
    };

    const customCoveoActionsOverride = {
      "impressions": "impression"
    };

    const eventsToTest = eventMapping[event];
    const eventsFoundForType = !!eventsToTest && eventsToTest.filter(e => ecommerce.hasOwnProperty(e));
    const ecommerceDataLayerToUse = eventsFoundForType.length > 0 && ecommerce[eventsFoundForType[0]];

    if (ecommerceDataLayerToUse) {
      addAllProductsIfDefined(ecommerceDataLayerToUse.products);
      addAllImpressionsIfDefined(ecommerceDataLayerToUse.impressions);
      const action = eventsFoundForType[0];
      setAction(customCoveoActionsOverride[action] || action, ecommerceDataLayerToUse.actionField);
    }

    addAllImpressionsIfDefined(ecommerce.impressions);
  }

  log('Coveo Using Measurement Protocol');

  coveoua("send", measurementProtocolTypeMap[data.eventType]);
};

const logCoveoAnalyticsEvent = () => {
  const eventDataForType = eventDataForTypeMap[data.eventType];
  addToObject(eventDataForType.customData, generateCustomData());

  const getUrl = require("getUrl");
  const getReferrerUrl = require("getReferrerUrl");
  const readTitle = require("readTitle");
  const eventData = {
    location: data.location || getUrl(),
    referrer: data.referrer || getReferrerUrl(),
    language: data.language,
    title: data.title || readTitle(),
    anonymous: data.isAnonymous,
    username: data.username,
    userDisplayName: data.userDisplayName
  };

  addToObject(eventData, eventDataForType);

  log('Coveo Analytics Data =', eventData);

  const createArgumentsQueue = require('createArgumentsQueue');
  const coveoua = createArgumentsQueue('coveoua', 'coveoua.q');
  coveoua("send", eventTypeMap[data.eventType], eventData);
};

loadCoveoAnalyticsScriptIfNotLoaded(() => {
  if (!isLoadEventType()) {
     if (eventDataForTypeMap[data.eventType]) {
     	logCoveoAnalyticsEvent();
     } else {
      	logWithMeasurementProtocol(); 
     }
  }
  data.gtmOnSuccess();
}, () => {
  data.gtmOnFailure();
});


___WEB_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "logging",
        "versionId": "1"
      },
      "param": [
        {
          "key": "environments",
          "value": {
            "type": 1,
            "string": "debug"
          }
        }
      ]
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "access_globals",
        "versionId": "1"
      },
      "param": [
        {
          "key": "keys",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "coveoua"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "coveoua.q"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "coveoua.t"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "coveoanalytics"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": false
                  }
                ]
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "get_referrer",
        "versionId": "1"
      },
      "param": [
        {
          "key": "urlParts",
          "value": {
            "type": 1,
            "string": "any"
          }
        },
        {
          "key": "queriesAllowed",
          "value": {
            "type": 1,
            "string": "any"
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "read_title",
        "versionId": "1"
      },
      "param": []
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "get_url",
        "versionId": "1"
      },
      "param": [
        {
          "key": "urlParts",
          "value": {
            "type": 1,
            "string": "any"
          }
        },
        {
          "key": "queriesAllowed",
          "value": {
            "type": 1,
            "string": "any"
          }
        }
      ]
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "inject_script",
        "versionId": "1"
      },
      "param": [
        {
          "key": "urls",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "https://static.cloud.coveo.com/coveo.analytics.js/*/coveoua.js"
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "read_data_layer",
        "versionId": "1"
      },
      "param": [
        {
          "key": "keyPatterns",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "ecommerce"
              },
              {
                "type": 1,
                "string": "event"
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  }
]


___TESTS___

scenarios:
- name: Throws when logging without init
  code: |-
    const mockData = {
      "eventType": "view"
    };

    runCode(mockData);

    assertApi('gtmOnFailure').wasCalled();
    assertApi('gtmOnSuccess').wasNotCalled();
- name: Sends a Page View event
  code: |-
    givenScriptInitialized();
    givenMockDataLayer({
      "event": "gtm.dom",
      "ecommerce": {}
    });

    const mockData = {
      "eventType": "view"
    };

    runCode(mockData);

    assertApi('gtmOnFailure').wasNotCalled();
    assertApi('gtmOnSuccess').wasCalled();
    assertEventWasSentWith("pageview");
- name: Adds Enhanced Commmerce Products with a Detail Page View event
  code: "const product = {\n   \"productName\": \"wow\" \n};\n\ngivenScriptInitialized();\n\
    \ngivenMockDataLayer({\n  \"event\": \"gtm.dom\",\n  \"ecommerce\": {\n  \t\"\
    detail\": {\n      \"products\": [product]\n    }\n  }\n});\n\nconst mockData\
    \ = {\n  \"eventType\": \"view\"\n};\n\nrunCode(mockData);\n\nassertApi('gtmOnFailure').wasNotCalled();\n\
    assertApi('gtmOnSuccess').wasCalled();\nassertActionWasQueued([\"ec:setAction\"\
    , \"detail\"]);\nassertActionWasQueued([\"ec:addProduct\", product]);\nassertEventWasSentWith(\"\
    pageview\");"
- name: Allows sending a Page View without ecommerce in data layer
  code: |-
    givenScriptInitialized();
    givenMockDataLayer({
      "event": "gtm.dom",
    });

    const mockData = {
      "eventType": "view"
    };

    runCode(mockData);

    assertApi('gtmOnFailure').wasNotCalled();
    assertApi('gtmOnSuccess').wasCalled();
    assertEventWasSentWith("pageview");
- name: Propagates the ECommerce currencyCode to coveoua
  code: "givenScriptInitialized();\ngivenMockDataLayer({\n  \"event\": \"gtm.dom\"\
    ,\n  \"ecommerce\": {\n     \"currencyCode\": \"EUR\" \n  }\n});\n\nconst mockData\
    \ = {\n  \"eventType\": \"view\"\n};\n\nrunCode(mockData);\n\nassertApi('gtmOnFailure').wasNotCalled();\n\
    assertApi('gtmOnSuccess').wasCalled();\nassertActionWasQueued([\"set\", \"currencyCode\"\
    , \"EUR\"]);\nassertEventWasSentWith(\"pageview\");"
- name: Should allow sending a Custom Coveo impression event
  code: "const product = {\n   \"productName\": \"wow\" \n};\n\ngivenScriptInitialized();\n\
    \ngivenMockDataLayer({\n  \"event\": \"impression\",\n  \"ecommerce\": {\n  \t\
    \"impression\": {\n      \"impressions\": [product],\n      \"actionField\": {\
    \ \"list\": \"coveo:search:1234\" },\n    }\n  }\n});\n\nconst mockData = {\n\
    \  \"eventType\": \"event\"\n};\n\nrunCode(mockData);\n\nassertApi('gtmOnFailure').wasNotCalled();\n\
    assertApi('gtmOnSuccess').wasCalled();\nassertActionWasQueued([\"ec:setAction\"\
    , \"impression\", { \"list\": \"coveo:search:1234\" }]);\nassertActionWasQueued([\"\
    ec:addImpression\", product]);\nassertEventWasSentWith(\"event\");"
setup: "const assertActionWasQueued = (event) => {\n   const createArgumentsQueue\
  \ = require('createArgumentsQueue');\n   const coveoua = createArgumentsQueue('coveoua',\
  \ 'coveoua.q');\n\n   assertThat(coveoua.q).contains(event);\n};\n\nconst givenScriptInitialized\
  \ = () => {\n  const mockData = {\n    \"eventType\": \"load\",\n    \"apiKey\"\
  : \"1234-this-is-an-api-key\",\n    \"analyticsEndpoint\": \"https://somefakeendpoint\"\
  ,\n  };\n  \n  let initialized = false;\n  mock('injectScript', function(url, onSuccess,\
  \ onFailure) {\n    onSuccess();\n    initialized = true;\n  });\n  mock('copyFromWindow',\
  \ function(name) {\n    if (name === \"coveoua\") {\n      return initialized ?\
  \ {} : null; \n    }\n  });\n\n  runCode(mockData);\n  \n  assertApi('injectScript').wasCalled();\n\
  \  assertApi('gtmOnSuccess').wasCalled();\n  assertActionWasQueued([\"init\", mockData.apiKey,\
  \ mockData.analyticsEndpoint]);\n};\n\nconst givenMockDataLayer = (fakeDataLayer)\
  \ => { \n   mock('copyFromDataLayer', (name) => {\n     return fakeDataLayer[name];\n\
  \   });\n};\n \n\nconst assertEventWasSentWith = (event, data) => {\n   assertActionWasQueued(data\
  \ ? [\"send\", event, data] : [\"send\", event]);\n};"


___NOTES___

Created on 9/16/2019, 10:11:06 AM


