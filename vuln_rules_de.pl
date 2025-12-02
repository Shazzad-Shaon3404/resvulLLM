:- dynamic snippet/1, quantifier/2, predicate/2, deref/2, array/2, arith/2, control/2, cast/2, sizeof/2.
vulnerable(S) :- control(S,'for').
vulnerable(S) :- control(S,'if').
vulnerable(S) :- control(S,'while').
vulnerable(S) :- predicate(S,'').
vulnerable(S) :- predicate(S,'DPRINTF').
vulnerable(S) :- predicate(S,'assert').
vulnerable(S) :- predicate(S,'close').
vulnerable(S) :- predicate(S,'error_report').
vulnerable(S) :- predicate(S,'error_setg').
vulnerable(S) :- predicate(S,'exit').
vulnerable(S) :- predicate(S,'g_assert').
vulnerable(S) :- predicate(S,'g_free').
vulnerable(S) :- predicate(S,'kvm_enabled').
vulnerable(S) :- predicate(S,'memcpy').
vulnerable(S) :- predicate(S,'memset').
vulnerable(S) :- predicate(S,'pstrcpy').
vulnerable(S) :- predicate(S,'snprintf').
vulnerable(S) :- predicate(S,'strcmp').
vulnerable(S) :- predicate(S,'strlen').
vulnerable(S) :- quantifier(S,'buf').
vulnerable(S) :- quantifier(S,'c').
vulnerable(S) :- quantifier(S,'coroutine_fn').
vulnerable(S) :- quantifier(S,'err').
vulnerable(S) :- quantifier(S,'fd').
vulnerable(S) :- quantifier(S,'filename').
vulnerable(S) :- quantifier(S,'flags').
vulnerable(S) :- quantifier(S,'i').
vulnerable(S) :- quantifier(S,'j').
vulnerable(S) :- quantifier(S,'len').
vulnerable(S) :- quantifier(S,'n').
vulnerable(S) :- quantifier(S,'offset').
vulnerable(S) :- quantifier(S,'p').
vulnerable(S) :- quantifier(S,'path').
vulnerable(S) :- quantifier(S,'r').
vulnerable(S) :- quantifier(S,'rc').
vulnerable(S) :- quantifier(S,'ret').
vulnerable(S) :- quantifier(S,'s').
vulnerable(S) :- quantifier(S,'size').
vulnerable(S) :- sizeof(S,'sizeof').
vulnerable(S) :- control(S,'for'), control(S,'if').
vulnerable(S) :- control(S,'for'), control(S,'switch').
vulnerable(S) :- control(S,'for'), control(S,'while').
vulnerable(S) :- control(S,'for'), predicate(S,'g_free').
vulnerable(S) :- control(S,'for'), quantifier(S,'i').
vulnerable(S) :- control(S,'for'), quantifier(S,'ret').
vulnerable(S) :- control(S,'for'), sizeof(S,'sizeof').
vulnerable(S) :- control(S,'if'), control(S,'while').
vulnerable(S) :- control(S,'if'), predicate(S,'').
vulnerable(S) :- predicate(S,'').
vulnerable(S) :- control(S,'if'), predicate(S,'DPRINTF').
vulnerable(S) :- predicate(S,'DPRINTF').
vulnerable(S) :- control(S,'if'), predicate(S,'abort').
vulnerable(S) :- control(S,'if'), predicate(S,'assert').
vulnerable(S) :- control(S,'if'), predicate(S,'close').
vulnerable(S) :- predicate(S,'close').
vulnerable(S) :- control(S,'if'), predicate(S,'error_report').
vulnerable(S) :- predicate(S,'error_report').
vulnerable(S) :- control(S,'if'), predicate(S,'error_setg').
vulnerable(S) :- predicate(S,'error_setg').
vulnerable(S) :- control(S,'if'), predicate(S,'exit').
vulnerable(S) :- predicate(S,'exit').
vulnerable(S) :- control(S,'if'), predicate(S,'g_free').
vulnerable(S) :- predicate(S,'g_free').
vulnerable(S) :- control(S,'if'), predicate(S,'kvm_enabled').
vulnerable(S) :- predicate(S,'kvm_enabled').
vulnerable(S) :- control(S,'if'), predicate(S,'memcpy').
vulnerable(S) :- predicate(S,'memcpy').
vulnerable(S) :- control(S,'if'), predicate(S,'memset').
vulnerable(S) :- control(S,'if'), predicate(S,'snprintf').
vulnerable(S) :- predicate(S,'snprintf').
vulnerable(S) :- control(S,'if'), predicate(S,'strcmp').
vulnerable(S) :- predicate(S,'strcmp').
vulnerable(S) :- control(S,'if'), predicate(S,'strlen').
vulnerable(S) :- predicate(S,'strlen').
vulnerable(S) :- control(S,'if'), quantifier(S,'buf').
vulnerable(S) :- quantifier(S,'buf').
vulnerable(S) :- control(S,'if'), quantifier(S,'c').
vulnerable(S) :- quantifier(S,'c').
vulnerable(S) :- control(S,'if'), quantifier(S,'err').
vulnerable(S) :- control(S,'if'), quantifier(S,'fd').
vulnerable(S) :- quantifier(S,'fd').
vulnerable(S) :- control(S,'if'), quantifier(S,'filename').
vulnerable(S) :- quantifier(S,'filename').
vulnerable(S) :- control(S,'if'), quantifier(S,'flags').
vulnerable(S) :- quantifier(S,'flags').
vulnerable(S) :- control(S,'if'), quantifier(S,'i').
vulnerable(S) :- control(S,'if'), quantifier(S,'j').
vulnerable(S) :- control(S,'if'), quantifier(S,'len').
vulnerable(S) :- quantifier(S,'len').
vulnerable(S) :- control(S,'if'), quantifier(S,'n').
vulnerable(S) :- quantifier(S,'n').
vulnerable(S) :- control(S,'if'), quantifier(S,'offset').
vulnerable(S) :- control(S,'if'), quantifier(S,'p').
vulnerable(S) :- quantifier(S,'p').
vulnerable(S) :- control(S,'if'), quantifier(S,'path').
vulnerable(S) :- quantifier(S,'path').
vulnerable(S) :- control(S,'if'), quantifier(S,'r').
vulnerable(S) :- control(S,'if'), quantifier(S,'rc').
vulnerable(S) :- quantifier(S,'rc').
vulnerable(S) :- control(S,'if'), quantifier(S,'ret').
vulnerable(S) :- quantifier(S,'ret').
vulnerable(S) :- control(S,'if'), quantifier(S,'size').
vulnerable(S) :- quantifier(S,'size').
vulnerable(S) :- control(S,'if'), sizeof(S,'sizeof').
vulnerable(S) :- control(S,'switch'), control(S,'while').
vulnerable(S) :- control(S,'switch'), predicate(S,'DPRINTF').
vulnerable(S) :- control(S,'switch'), quantifier(S,'i').
vulnerable(S) :- control(S,'switch'), quantifier(S,'ret').
vulnerable(S) :- control(S,'switch'), sizeof(S,'sizeof').
vulnerable(S) :- control(S,'while'), quantifier(S,'i').
vulnerable(S) :- control(S,'while'), quantifier(S,'ret').
vulnerable(S) :- control(S,'while'), sizeof(S,'sizeof').
vulnerable(S) :- predicate(S,'assert'), sizeof(S,'sizeof').
vulnerable(S) :- predicate(S,'close'), sizeof(S,'sizeof').
vulnerable(S) :- predicate(S,'error_report'), quantifier(S,'ret').
vulnerable(S) :- predicate(S,'error_report'), sizeof(S,'sizeof').
vulnerable(S) :- predicate(S,'error_setg'), quantifier(S,'ret').
vulnerable(S) :- predicate(S,'error_setg'), sizeof(S,'sizeof').
vulnerable(S) :- predicate(S,'exit'), quantifier(S,'i').
vulnerable(S) :- predicate(S,'exit'), sizeof(S,'sizeof').
vulnerable(S) :- predicate(S,'g_free'), quantifier(S,'i').
vulnerable(S) :- predicate(S,'g_free'), quantifier(S,'ret').
vulnerable(S) :- predicate(S,'g_free'), sizeof(S,'sizeof').
vulnerable(S) :- predicate(S,'memset'), sizeof(S,'sizeof').
vulnerable(S) :- predicate(S,'snprintf'), sizeof(S,'sizeof').
vulnerable(S) :- predicate(S,'strcmp'), sizeof(S,'sizeof').
vulnerable(S) :- predicate(S,'strlen'), sizeof(S,'sizeof').
vulnerable(S) :- quantifier(S,'buf'), sizeof(S,'sizeof').
vulnerable(S) :- quantifier(S,'fd'), sizeof(S,'sizeof').
vulnerable(S) :- quantifier(S,'i'), quantifier(S,'j').
vulnerable(S) :- quantifier(S,'i'), quantifier(S,'ret').
vulnerable(S) :- quantifier(S,'i'), sizeof(S,'sizeof').
vulnerable(S) :- quantifier(S,'len'), sizeof(S,'sizeof').
vulnerable(S) :- quantifier(S,'ret'), sizeof(S,'sizeof').
vulnerable(S) :- quantifier(S,'s'), sizeof(S,'sizeof').
vulnerable(S) :- control(S,'for'), control(S,'if'), control(S,'switch').
vulnerable(S) :- control(S,'for'), control(S,'switch').
vulnerable(S) :- control(S,'for'), control(S,'if'), control(S,'while').
vulnerable(S) :- control(S,'for'), control(S,'while').
vulnerable(S) :- control(S,'for'), control(S,'if'), predicate(S,'g_free').
vulnerable(S) :- control(S,'for'), predicate(S,'g_free').
vulnerable(S) :- control(S,'for'), control(S,'if'), quantifier(S,'i').
vulnerable(S) :- control(S,'for'), control(S,'if'), quantifier(S,'ret').
vulnerable(S) :- control(S,'for'), quantifier(S,'ret').
vulnerable(S) :- control(S,'for'), control(S,'if'), sizeof(S,'sizeof').
vulnerable(S) :- control(S,'for'), sizeof(S,'sizeof').
vulnerable(S) :- control(S,'for'), control(S,'switch'), quantifier(S,'i').
vulnerable(S) :- control(S,'for'), quantifier(S,'i'), quantifier(S,'ret').
vulnerable(S) :- control(S,'for'), quantifier(S,'i'), sizeof(S,'sizeof').
vulnerable(S) :- control(S,'if'), control(S,'switch'), control(S,'while').
vulnerable(S) :- control(S,'switch'), control(S,'while').
vulnerable(S) :- control(S,'if'), control(S,'switch'), predicate(S,'DPRINTF').
vulnerable(S) :- control(S,'if'), control(S,'switch'), predicate(S,'abort').
vulnerable(S) :- control(S,'if'), control(S,'switch'), quantifier(S,'i').
vulnerable(S) :- control(S,'switch'), quantifier(S,'i').
vulnerable(S) :- control(S,'if'), control(S,'switch'), quantifier(S,'ret').
vulnerable(S) :- control(S,'switch'), quantifier(S,'ret').
vulnerable(S) :- control(S,'if'), control(S,'switch'), sizeof(S,'sizeof').
vulnerable(S) :- control(S,'switch'), sizeof(S,'sizeof').
vulnerable(S) :- control(S,'if'), control(S,'while'), quantifier(S,'i').
vulnerable(S) :- control(S,'while'), quantifier(S,'i').
vulnerable(S) :- control(S,'if'), control(S,'while'), quantifier(S,'ret').
vulnerable(S) :- control(S,'while'), quantifier(S,'ret').
vulnerable(S) :- control(S,'if'), control(S,'while'), sizeof(S,'sizeof').
vulnerable(S) :- control(S,'while'), sizeof(S,'sizeof').
vulnerable(S) :- control(S,'if'), predicate(S,'assert'), sizeof(S,'sizeof').
vulnerable(S) :- predicate(S,'assert'), sizeof(S,'sizeof').
vulnerable(S) :- control(S,'if'), predicate(S,'close'), sizeof(S,'sizeof').
vulnerable(S) :- predicate(S,'close'), sizeof(S,'sizeof').
vulnerable(S) :- control(S,'if'), predicate(S,'error_report'), quantifier(S,'ret').
vulnerable(S) :- predicate(S,'error_report'), quantifier(S,'ret').
vulnerable(S) :- control(S,'if'), predicate(S,'error_report'), sizeof(S,'sizeof').
vulnerable(S) :- predicate(S,'error_report'), sizeof(S,'sizeof').
vulnerable(S) :- control(S,'if'), predicate(S,'error_setg'), quantifier(S,'ret').
vulnerable(S) :- predicate(S,'error_setg'), quantifier(S,'ret').
vulnerable(S) :- control(S,'if'), predicate(S,'error_setg'), sizeof(S,'sizeof').
vulnerable(S) :- predicate(S,'error_setg'), sizeof(S,'sizeof').
vulnerable(S) :- control(S,'if'), predicate(S,'exit'), quantifier(S,'i').
vulnerable(S) :- predicate(S,'exit'), quantifier(S,'i').
vulnerable(S) :- control(S,'if'), predicate(S,'exit'), sizeof(S,'sizeof').
vulnerable(S) :- predicate(S,'exit'), sizeof(S,'sizeof').
vulnerable(S) :- control(S,'if'), predicate(S,'g_free'), quantifier(S,'i').
vulnerable(S) :- predicate(S,'g_free'), quantifier(S,'i').
vulnerable(S) :- control(S,'if'), predicate(S,'g_free'), quantifier(S,'ret').
vulnerable(S) :- predicate(S,'g_free'), quantifier(S,'ret').
vulnerable(S) :- control(S,'if'), predicate(S,'g_free'), sizeof(S,'sizeof').
vulnerable(S) :- predicate(S,'g_free'), sizeof(S,'sizeof').
vulnerable(S) :- control(S,'if'), predicate(S,'memset'), sizeof(S,'sizeof').
vulnerable(S) :- control(S,'if'), predicate(S,'snprintf'), sizeof(S,'sizeof').
vulnerable(S) :- control(S,'if'), predicate(S,'snprintf').
vulnerable(S) :- predicate(S,'snprintf'), sizeof(S,'sizeof').
vulnerable(S) :- control(S,'if'), predicate(S,'strcmp'), sizeof(S,'sizeof').
vulnerable(S) :- predicate(S,'strcmp'), sizeof(S,'sizeof').
vulnerable(S) :- control(S,'if'), predicate(S,'strlen'), sizeof(S,'sizeof').
vulnerable(S) :- predicate(S,'strlen'), sizeof(S,'sizeof').
vulnerable(S) :- control(S,'if'), quantifier(S,'buf'), sizeof(S,'sizeof').
vulnerable(S) :- quantifier(S,'buf'), sizeof(S,'sizeof').
vulnerable(S) :- control(S,'if'), quantifier(S,'fd'), sizeof(S,'sizeof').
vulnerable(S) :- quantifier(S,'fd'), sizeof(S,'sizeof').
vulnerable(S) :- control(S,'if'), quantifier(S,'i'), quantifier(S,'j').
vulnerable(S) :- control(S,'if'), quantifier(S,'i'), quantifier(S,'ret').
vulnerable(S) :- quantifier(S,'i'), quantifier(S,'ret').
vulnerable(S) :- control(S,'if'), quantifier(S,'i'), sizeof(S,'sizeof').
vulnerable(S) :- quantifier(S,'i'), sizeof(S,'sizeof').
vulnerable(S) :- control(S,'if'), quantifier(S,'len'), sizeof(S,'sizeof').
vulnerable(S) :- quantifier(S,'len'), sizeof(S,'sizeof').
vulnerable(S) :- control(S,'if'), quantifier(S,'ret'), sizeof(S,'sizeof').
vulnerable(S) :- quantifier(S,'ret'), sizeof(S,'sizeof').
vulnerable(S) :- quantifier(S,'i'), quantifier(S,'ret'), sizeof(S,'sizeof').
vulnerable(S) :- control(S,'for'), control(S,'if'), control(S,'switch'), quantifier(S,'i').
vulnerable(S) :- control(S,'for'), control(S,'switch'), quantifier(S,'i').
vulnerable(S) :- control(S,'for'), control(S,'if'), quantifier(S,'i'), quantifier(S,'ret').
vulnerable(S) :- control(S,'for'), quantifier(S,'i'), quantifier(S,'ret').
vulnerable(S) :- control(S,'for'), control(S,'if'), quantifier(S,'i'), sizeof(S,'sizeof').
vulnerable(S) :- control(S,'for'), quantifier(S,'i'), sizeof(S,'sizeof').
vulnerable(S) :- control(S,'if'), quantifier(S,'i'), quantifier(S,'ret'), sizeof(S,'sizeof').
vulnerable(S) :- quantifier(S,'i'), quantifier(S,'ret'), sizeof(S,'sizeof').
