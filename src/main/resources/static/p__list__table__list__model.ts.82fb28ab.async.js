(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([[11],{e2kR:function(e,t,a){"use strict";var r=a("g09b");Object.defineProperty(t,"__esModule",{value:!0}),t.queryRule=p,t.removeRule=d,t.addRule=o,t.updateRule=h;var n=r(a("p0pE")),u=r(a("d6i3")),l=r(a("1l/V")),c=r(a("sy1d"));function p(e){return s.apply(this,arguments)}function s(){return s=(0,l.default)(u.default.mark(function e(t){return u.default.wrap(function(e){while(1)switch(e.prev=e.next){case 0:return e.abrupt("return",(0,c.default)("/api/rule",{params:t}));case 1:case"end":return e.stop()}},e)})),s.apply(this,arguments)}function d(e){return i.apply(this,arguments)}function i(){return i=(0,l.default)(u.default.mark(function e(t){return u.default.wrap(function(e){while(1)switch(e.prev=e.next){case 0:return e.abrupt("return",(0,c.default)("/api/rule",{method:"POST",data:(0,n.default)({},t,{method:"delete"})}));case 1:case"end":return e.stop()}},e)})),i.apply(this,arguments)}function o(e){return f.apply(this,arguments)}function f(){return f=(0,l.default)(u.default.mark(function e(t){return u.default.wrap(function(e){while(1)switch(e.prev=e.next){case 0:return e.abrupt("return",(0,c.default)("/api/rule",{method:"POST",data:(0,n.default)({},t,{method:"post"})}));case 1:case"end":return e.stop()}},e)})),f.apply(this,arguments)}function h(e){return w.apply(this,arguments)}function w(){return w=(0,l.default)(u.default.mark(function e(t){return u.default.wrap(function(e){while(1)switch(e.prev=e.next){case 0:return e.abrupt("return",(0,c.default)("/api/rule",{method:"POST",data:(0,n.default)({},t,{method:"update"})}));case 1:case"end":return e.stop()}},e)})),w.apply(this,arguments)}},v32x:function(e,t,a){"use strict";var r=a("g09b");Object.defineProperty(t,"__esModule",{value:!0}),t.default=void 0;var n=r(a("p0pE")),u=r(a("d6i3")),l=a("e2kR"),c={namespace:"listTableList",state:{data:{list:[],pagination:{}}},effects:{fetch:u.default.mark(function e(t,a){var r,n,c,p;return u.default.wrap(function(e){while(1)switch(e.prev=e.next){case 0:return r=t.payload,n=a.call,c=a.put,e.next=4,n(l.queryRule,r);case 4:return p=e.sent,e.next=7,c({type:"save",payload:p});case 7:case"end":return e.stop()}},e)}),add:u.default.mark(function e(t,a){var r,n,c,p,s;return u.default.wrap(function(e){while(1)switch(e.prev=e.next){case 0:return r=t.payload,n=t.callback,c=a.call,p=a.put,e.next=4,c(l.addRule,r);case 4:return s=e.sent,e.next=7,p({type:"save",payload:s});case 7:n&&n();case 8:case"end":return e.stop()}},e)}),remove:u.default.mark(function e(t,a){var r,n,c,p,s;return u.default.wrap(function(e){while(1)switch(e.prev=e.next){case 0:return r=t.payload,n=t.callback,c=a.call,p=a.put,e.next=4,c(l.removeRule,r);case 4:return s=e.sent,e.next=7,p({type:"save",payload:s});case 7:n&&n();case 8:case"end":return e.stop()}},e)}),update:u.default.mark(function e(t,a){var r,n,c,p,s;return u.default.wrap(function(e){while(1)switch(e.prev=e.next){case 0:return r=t.payload,n=t.callback,c=a.call,p=a.put,e.next=4,c(l.updateRule,r);case 4:return s=e.sent,e.next=7,p({type:"save",payload:s});case 7:n&&n();case 8:case"end":return e.stop()}},e)})},reducers:{save:function(e,t){return(0,n.default)({},e,{data:t.payload})}}},p=c;t.default=p}}]);