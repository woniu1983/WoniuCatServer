(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([[17],{"8gNO":function(e,a,t){"use strict";var l=t("g09b");Object.defineProperty(a,"__esModule",{value:!0}),a.default=void 0,t("7Kak");var s=l(t("9yH6"));t("IzEo");var d=l(t("bx4M")),n=t("Y2fQ"),r=l(t("q1tI")),u=t("ucLW"),o=l(t("B6XH")),i=l(t("WD6q")),f=function(e){var a=e.dropdownGroup,t=e.salesType,l=e.loading,f=e.salesPieData,c=e.handleChangeSalesType;return r.default.createElement(d.default,{loading:l,className:i.default.salesCard,bordered:!1,title:r.default.createElement(n.FormattedMessage,{id:"dashboard-analysis.analysis.the-proportion-of-sales",defaultMessage:"The Proportion of Sales"}),style:{height:"100%"},extra:r.default.createElement("div",{className:i.default.salesCardExtra},a,r.default.createElement("div",{className:i.default.salesTypeRadio},r.default.createElement(s.default.Group,{value:t,onChange:c},r.default.createElement(s.default.Button,{value:"all"},r.default.createElement(n.FormattedMessage,{id:"dashboard-analysis.channel.all",defaultMessage:"ALL"})),r.default.createElement(s.default.Button,{value:"online"},r.default.createElement(n.FormattedMessage,{id:"dashboard-analysis.channel.online",defaultMessage:"Online"})),r.default.createElement(s.default.Button,{value:"stores"},r.default.createElement(n.FormattedMessage,{id:"dashboard-analysis.channel.stores",defaultMessage:"Stores"})))))},r.default.createElement("div",null,r.default.createElement("h4",{style:{marginTop:8,marginBottom:32}},r.default.createElement(n.FormattedMessage,{id:"dashboard-analysis.analysis.sales",defaultMessage:"Sales"})),r.default.createElement(u.Pie,{hasLegend:!0,subTitle:r.default.createElement(n.FormattedMessage,{id:"dashboard-analysis.analysis.sales",defaultMessage:"Sales"}),total:function(){return r.default.createElement(o.default,null,f.reduce(function(e,a){return a.y+e},0))},data:f,valueFormat:function(e){return r.default.createElement(o.default,null,e)},height:248,lineWidth:4})))},c=f;a.default=c}}]);