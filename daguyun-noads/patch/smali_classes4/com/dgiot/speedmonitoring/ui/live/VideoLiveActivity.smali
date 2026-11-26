.class public final Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;
.super Lcom/dgiot/speedmonitoring/base/BaseActivity;
.source "VideoLiveActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity$Companion;,
        Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity$DelaySleepRunnable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dgiot/speedmonitoring/base/BaseActivity<",
        "Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVideoLiveActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VideoLiveActivity.kt\ncom/dgiot/speedmonitoring/ui/live/VideoLiveActivity\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,3104:1\n1#2:3105\n731#3,9:3106\n731#3,9:3117\n731#3,9:3128\n37#4,2:3115\n37#4,2:3126\n37#4,2:3137\n*S KotlinDebug\n*F\n+ 1 VideoLiveActivity.kt\ncom/dgiot/speedmonitoring/ui/live/VideoLiveActivity\n*L\n2104#1:3106,9\n2124#1:3117,9\n2601#1:3128,9\n2105#1:3115,2\n2125#1:3126,2\n2602#1:3137,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0087\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0015\n\u0002\u0008\n\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008A\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u001b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u001c\n\u0002\u0018\u0002\n\u0002\u0008\u0018\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0010 \n\u0002\u0008$\n\u0002\u0018\u0002\n\u0002\u0008\u0004*\u0001+\u0018\u0000 \u00dd\u00032\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001:\u0004\u00dd\u0003\u00de\u0003B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0013\u0010\u00ad\u0002\u001a\u00030\u00ae\u00022\u0007\u0010\u00af\u0002\u001a\u00020\u0005H\u0002J\n\u0010\u00b0\u0002\u001a\u00030\u00ae\u0002H\u0002J\u0013\u0010\u00b1\u0002\u001a\u00030\u00ae\u00022\u0007\u0010\u00b2\u0002\u001a\u00020\u0005H\u0002J\n\u0010\u00b3\u0002\u001a\u00030\u00ae\u0002H\u0002J\u0013\u0010\u00b4\u0002\u001a\u00030\u00ae\u00022\u0007\u0010\u00b5\u0002\u001a\u00020\u0005H\u0002J\u0008\u0010\u00b6\u0002\u001a\u00030\u00ae\u0002J\u001c\u0010\u00b7\u0002\u001a\u00030\u00ae\u00022\u0007\u0010\u00b8\u0002\u001a\u00020\u00052\u0007\u0010\u00b9\u0002\u001a\u00020%H\u0002J\u0012\u0010\u00ba\u0002\u001a\u00030\u00ae\u00022\u0008\u0010\u00bb\u0002\u001a\u00030\u00bc\u0002J\u001b\u0010\u00bd\u0002\u001a\u00020\u001b2\u0007\u0010\u00be\u0002\u001a\u00020%2\u0007\u0010\u00bf\u0002\u001a\u00020%H\u0002J\n\u0010\u00c0\u0002\u001a\u00030\u00ae\u0002H\u0002J\u0008\u0010\u00c1\u0002\u001a\u00030\u00ae\u0002J\n\u0010\u00c2\u0002\u001a\u00030\u00ae\u0002H\u0002J\u0011\u0010\u00c3\u0002\u001a\u00030\u00ae\u00022\u0007\u0010\u00c4\u0002\u001a\u00020\u0005J\u0011\u0010\u00c5\u0002\u001a\u00030\u00ae\u00022\u0007\u0010\u00c6\u0002\u001a\u00020\u001bJ\u001c\u0010\u00c7\u0002\u001a\u00030\u00ae\u00022\u0007\u0010\u00c8\u0002\u001a\u00020\u001b2\u0007\u0010\u00c9\u0002\u001a\u00020\u001bH\u0002J\u0012\u0010\u00ca\u0002\u001a\u00030\u00ae\u00022\u0008\u0010\u00cb\u0002\u001a\u00030\u00cc\u0002J\u0008\u0010\u00cd\u0002\u001a\u00030\u00ae\u0002J\u001c\u0010\u00ce\u0002\u001a\u00030\u00ae\u00022\t\u0010\u00cf\u0002\u001a\u0004\u0018\u00010%2\u0007\u0010\u00d0\u0002\u001a\u00020%J\n\u0010\u00d1\u0002\u001a\u00030\u00ae\u0002H\u0002J\u0010\u0010\u00d2\u0002\u001a\u00020%2\u0007\u0010\u00d3\u0002\u001a\u00020%J\n\u0010\u00d4\u0002\u001a\u00030\u00ae\u0002H\u0016J\t\u0010\u00d5\u0002\u001a\u00020%H\u0002J\t\u0010\u00d6\u0002\u001a\u00020SH\u0002J\u0010\u0010\u00d7\u0002\u001a\u00020%2\u0007\u0010\u00d8\u0002\u001a\u00020\u001bJ\t\u0010\u00d9\u0002\u001a\u00020:H\u0002J\t\u0010\u00da\u0002\u001a\u00020\u0002H\u0014J\u0008\u0010\u00db\u0002\u001a\u00030\u00ae\u0002J\u0013\u0010\u00dc\u0002\u001a\u00030\u00ae\u00022\u0007\u0010\u00b9\u0002\u001a\u00020%H\u0002J\u0013\u0010\u00dd\u0002\u001a\u00030\u00ae\u00022\u0007\u0010\u00b9\u0002\u001a\u00020%H\u0002J\u0013\u0010\u00de\u0002\u001a\u00030\u00ae\u00022\u0007\u0010\u00b9\u0002\u001a\u00020%H\u0002J\n\u0010\u00df\u0002\u001a\u00030\u00ae\u0002H\u0002J\u0008\u0010\u00e0\u0002\u001a\u00030\u00ae\u0002J\u0008\u0010\u00e1\u0002\u001a\u00030\u00ae\u0002J\n\u0010\u00e2\u0002\u001a\u00030\u00ae\u0002H\u0002J\n\u0010\u00e3\u0002\u001a\u00030\u00ae\u0002H\u0002J\n\u0010\u00e4\u0002\u001a\u00030\u00ae\u0002H\u0002J\n\u0010\u00e5\u0002\u001a\u00030\u00ae\u0002H\u0002J\u0008\u0010\u00e6\u0002\u001a\u00030\u00ae\u0002J\u0016\u0010\u00e7\u0002\u001a\u00030\u00ae\u00022\n\u0010\u00e8\u0002\u001a\u0005\u0018\u00010\u00e9\u0002H\u0002J\n\u0010\u00ea\u0002\u001a\u00030\u00ae\u0002H\u0002J\n\u0010\u00eb\u0002\u001a\u00030\u00ae\u0002H\u0002J\n\u0010\u00ec\u0002\u001a\u00030\u00ae\u0002H\u0002J\n\u0010\u00ed\u0002\u001a\u00030\u00ae\u0002H\u0002J\n\u0010\u00ee\u0002\u001a\u00030\u00ae\u0002H\u0002J\n\u0010\u00ef\u0002\u001a\u00030\u00ae\u0002H\u0002J\n\u0010\u00f0\u0002\u001a\u00030\u00ae\u0002H\u0002J\n\u0010\u00f1\u0002\u001a\u00030\u00ae\u0002H\u0002J\u0008\u0010\u00f2\u0002\u001a\u00030\u00ae\u0002J\n\u0010\u00f3\u0002\u001a\u00030\u00ae\u0002H\u0002J\n\u0010\u00f4\u0002\u001a\u00030\u00ae\u0002H\u0002J\u0008\u0010\u00f5\u0002\u001a\u00030\u00ae\u0002J\n\u0010\u00f6\u0002\u001a\u00030\u00ae\u0002H\u0002J\n\u0010\u00f7\u0002\u001a\u00030\u00ae\u0002H\u0002J\n\u0010\u00f8\u0002\u001a\u00030\u00ae\u0002H\u0002J\n\u0010\u00f9\u0002\u001a\u00030\u00ae\u0002H\u0002J\n\u0010\u00fa\u0002\u001a\u00030\u00ae\u0002H\u0002J\u0008\u0010\u00fb\u0002\u001a\u00030\u00ae\u0002J\n\u0010\u00fc\u0002\u001a\u00030\u00ae\u0002H\u0014J\u0007\u0010\u00fd\u0002\u001a\u00020\u001bJ\n\u0010\u00fe\u0002\u001a\u00030\u00ae\u0002H\u0002J\n\u0010\u00ff\u0002\u001a\u00030\u00ae\u0002H\u0016J\u0014\u0010\u0080\u0003\u001a\u00030\u00ae\u00022\u0008\u0010\u0081\u0003\u001a\u00030\u0082\u0003H\u0016J\n\u0010\u0083\u0003\u001a\u00030\u00ae\u0002H\u0016J\u001c\u0010\u0084\u0003\u001a\u00020\u001b2\u0007\u0010\u0085\u0003\u001a\u00020\u00052\u0008\u0010\u0086\u0003\u001a\u00030\u0087\u0003H\u0016J\u0014\u0010\u0088\u0003\u001a\u00030\u00ae\u00022\u0008\u0010\u00e8\u0002\u001a\u00030\u00e9\u0002H\u0014J\n\u0010\u0089\u0003\u001a\u00030\u00ae\u0002H\u0014J\n\u0010\u008a\u0003\u001a\u00030\u00ae\u0002H\u0014J\n\u0010\u008b\u0003\u001a\u00030\u00ae\u0002H\u0014J\n\u0010\u008c\u0003\u001a\u00030\u00ae\u0002H\u0014J\u0013\u0010\u008d\u0003\u001a\u00020\u001b2\u0008\u0010\u0086\u0003\u001a\u00030\u008e\u0003H\u0016J\u0013\u0010\u008f\u0003\u001a\u00030\u00ae\u00022\u0007\u0010\u0090\u0003\u001a\u00020\u001bH\u0016J\u0012\u0010\u0091\u0003\u001a\u00020%2\u0007\u0010\u0092\u0003\u001a\u00020%H\u0002J\n\u0010\u0093\u0003\u001a\u00030\u00ae\u0002H\u0002J\n\u0010\u0094\u0003\u001a\u00030\u00ae\u0002H\u0002J\u0008\u0010\u0095\u0003\u001a\u00030\u00ae\u0002J\u0008\u0010\u0096\u0003\u001a\u00030\u00ae\u0002J\n\u0010\u0097\u0003\u001a\u00030\u00ae\u0002H\u0002J\n\u0010\u0098\u0003\u001a\u00030\u00ae\u0002H\u0002J\u0014\u0010\u0099\u0003\u001a\u00030\u00ae\u00022\u0008\u0010\u009a\u0003\u001a\u00030\u009b\u0003H\u0002J\u0013\u0010\u009c\u0003\u001a\u00030\u00ae\u00022\u0007\u0010\u009d\u0003\u001a\u00020\u0005H\u0002J\u0008\u0010\u009e\u0003\u001a\u00030\u00ae\u0002J\n\u0010\u009f\u0003\u001a\u00030\u00ae\u0002H\u0002J\n\u0010\u00a0\u0003\u001a\u00030\u00ae\u0002H\u0002J\n\u0010\u00a1\u0003\u001a\u00030\u00ae\u0002H\u0002J\u0008\u0010\u00a2\u0003\u001a\u00030\u00ae\u0002J\u0011\u0010\u00a2\u0003\u001a\u00030\u00ae\u00022\u0007\u0010\u00a3\u0003\u001a\u00020\u0005J\u001a\u0010\u00a4\u0003\u001a\u00030\u00ae\u00022\u0007\u0010\u00b8\u0002\u001a\u00020\u00052\u0007\u0010\u00b9\u0002\u001a\u00020%J\u0012\u0010\u00a5\u0003\u001a\u00030\u00ae\u00022\u0008\u0010\u00a6\u0003\u001a\u00030\u00a7\u0003J\u0011\u0010\u00a8\u0003\u001a\u00030\u00ae\u00022\u0007\u0010\u009d\u0003\u001a\u00020\u0005J\u0008\u0010\u00a9\u0003\u001a\u00030\u00ae\u0002J\u0011\u0010\u00aa\u0003\u001a\u00030\u00ae\u00022\u0007\u0010\u00ab\u0003\u001a\u00020\u001bJ\u0011\u0010\u00ac\u0003\u001a\u00030\u00ae\u00022\u0007\u0010\u00ad\u0003\u001a\u00020\u001bJ\u0013\u0010\u00ae\u0003\u001a\u00030\u00ae\u00022\u0007\u0010\u00af\u0003\u001a\u00020\u001bH\u0002J\u0008\u0010\u00b0\u0003\u001a\u00030\u00ae\u0002J\n\u0010\u00b1\u0003\u001a\u00030\u00ae\u0002H\u0002J\n\u0010\u00b2\u0003\u001a\u00030\u00ae\u0002H\u0002J\u0008\u0010\u00b3\u0003\u001a\u00030\u00ae\u0002J\u001a\u0010\u00b4\u0003\u001a\u00030\u00ae\u00022\u000e\u0010\u00b5\u0003\u001a\t\u0012\u0004\u0012\u00020%0\u00b6\u0003H\u0002J%\u0010\u00b7\u0003\u001a\u00030\u00ae\u00022\u0007\u0010\u00cf\u0002\u001a\u00020%2\u0007\u0010\u00b8\u0003\u001a\u00020%2\u0007\u0010\u00b9\u0003\u001a\u00020%H\u0002J\u0011\u0010\u00ba\u0003\u001a\u00030\u00ae\u00022\u0007\u0010\u00bb\u0003\u001a\u00020\u0005J\u001a\u0010\u00bc\u0003\u001a\u00030\u00ae\u00022\u0007\u0010\u00bd\u0003\u001a\u00020\u00052\u0007\u0010\u00bf\u0002\u001a\u00020%J\u0008\u0010\u00be\u0003\u001a\u00030\u00ae\u0002J\n\u0010\u00bf\u0003\u001a\u00030\u00ae\u0002H\u0002J\u0011\u0010\u00c0\u0003\u001a\u00030\u00ae\u00022\u0007\u0010\u00c1\u0003\u001a\u00020\u001bJ\u0008\u0010\u00c2\u0003\u001a\u00030\u00ae\u0002J\u0008\u0010\u00c3\u0003\u001a\u00030\u00ae\u0002J\u0013\u0010\u00c4\u0003\u001a\u00030\u00ae\u00022\u0007\u0010\u00c5\u0003\u001a\u00020%H\u0002J\n\u0010\u00c6\u0003\u001a\u00030\u00ae\u0002H\u0002J\u0008\u0010\u00c7\u0003\u001a\u00030\u00ae\u0002J\u0008\u0010\u00fa\u0001\u001a\u00030\u00ae\u0002J\n\u0010\u00c8\u0003\u001a\u00030\u00ae\u0002H\u0002J\u0008\u0010\u00c9\u0003\u001a\u00030\u00ae\u0002J\u0008\u0010\u00ca\u0003\u001a\u00030\u00ae\u0002J\u0008\u0010\u00cb\u0003\u001a\u00030\u00ae\u0002J\n\u0010\u00cc\u0003\u001a\u00030\u00ae\u0002H\u0002J\n\u0010\u00cd\u0003\u001a\u00030\u00ae\u0002H\u0002J\u0011\u0010\u00ce\u0003\u001a\u00030\u00ae\u00022\u0007\u0010\u00d8\u0002\u001a\u00020\u001bJ\u0011\u0010\u00cf\u0003\u001a\u00030\u00ae\u00022\u0007\u0010\u00d8\u0002\u001a\u00020\u001bJ\u0008\u0010\u00d0\u0003\u001a\u00030\u00ae\u0002J\u0008\u0010\u00d1\u0003\u001a\u00030\u00ae\u0002J\n\u0010\u00d2\u0003\u001a\u00030\u00ae\u0002H\u0002J\u001a\u0010\u00d3\u0003\u001a\u00030\u00ae\u00022\u0007\u0010\u00b8\u0002\u001a\u00020\u00052\u0007\u0010\u00b9\u0002\u001a\u00020%J\u0008\u0010\u00d4\u0003\u001a\u00030\u00ae\u0002J\u0011\u0010\u00d5\u0003\u001a\u00030\u00ae\u00022\u0007\u0010\u00d8\u0002\u001a\u00020\u001bJ\u0011\u0010\u00d6\u0003\u001a\u00030\u00ae\u00022\u0007\u0010\u00d8\u0002\u001a\u00020\u001bJ\u0008\u0010\u00d7\u0003\u001a\u00030\u00ae\u0002J\u0008\u0010\u00d8\u0003\u001a\u00030\u00ae\u0002J#\u0010\u00d9\u0003\u001a\u00030\u00ae\u00022\u000f\u0010\u00da\u0003\u001a\n\u0012\u0005\u0012\u00030\u00db\u00030\u00b6\u00032\u0008\u0010\u00dc\u0003\u001a\u00030\u00d8\u0001R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082D\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R$\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000c\u001a\u00020\r8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u0012\u0010\u0012\u001a\u00020\u00138\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u001c\u001a\u00020\u001d8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u001e\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"R\u0012\u0010#\u001a\u00020\u001b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010$\u001a\u00020%X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008&\u0010\'\"\u0004\u0008(\u0010)R\u0010\u0010*\u001a\u00020+X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010,R\"\u0010-\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010/0.X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00080\u00101\"\u0004\u00082\u00103R\u0012\u00104\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u00105\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u00106\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u00107\u001a\u0004\u0018\u000108X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u00109\u001a\u00020:8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008;\u0010<R\u001a\u0010=\u001a\u00020>X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008?\u0010@\"\u0004\u0008A\u0010BR\u001a\u0010C\u001a\u00020>X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008D\u0010@\"\u0004\u0008E\u0010BR\u0012\u0010F\u001a\u0002088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010G\u001a\u0002088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010H\u001a\u00020IX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010J\u001a\u00060KR\u00020\u00008\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010L\u001a\u00020>X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008M\u0010@\"\u0004\u0008N\u0010BR\u0014\u0010O\u001a\u0004\u0018\u00010%8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010P\u001a\u0004\u0018\u00010%8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010Q\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010R\u001a\u0004\u0018\u00010SX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010T\u001a\u0004\u0018\u00010:X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010U\u001a\u00020\u001b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010V\u001a\u00020\u001bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008W\u0010X\"\u0004\u0008Y\u0010ZR\u001a\u0010[\u001a\u00020\u001bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\\\u0010X\"\u0004\u0008]\u0010ZR\u000e\u0010^\u001a\u00020\u001bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010_\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008`\u0010a\"\u0004\u0008b\u0010cR\u001a\u0010d\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008e\u0010a\"\u0004\u0008f\u0010cR\u000e\u0010g\u001a\u000208X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010h\u001a\u00020\u001bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008i\u0010X\"\u0004\u0008j\u0010ZR\u0012\u0010k\u001a\u00020\u00138\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010l\u001a\u0004\u0018\u00010%8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010m\u001a\u00020\u001b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010n\u001a\u00020\u001b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010o\u001a\u00020\u001b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010p\u001a\u00020\u001b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010q\u001a\u00020\u001b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010r\u001a\u00020\u001b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010s\u001a\u00020\u001b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010t\u001a\u00020\u001b8F\u00a2\u0006\u0006\u001a\u0004\u0008t\u0010XR\u001a\u0010u\u001a\u00020\u001bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008u\u0010X\"\u0004\u0008v\u0010ZR\u001a\u0010w\u001a\u00020\u001bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008w\u0010X\"\u0004\u0008x\u0010ZR\u0014\u0010y\u001a\u00020\u001b8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008y\u0010XR\u0012\u0010z\u001a\u00020\u001b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010{\u001a\u00020\u001bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008{\u0010X\"\u0004\u0008|\u0010ZR\u0012\u0010}\u001a\u00020\u001b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010~\u001a\u00020\u001b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u007f\u001a\u00020\u001b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u0080\u0001\u001a\u00020\u001b8F\u00a2\u0006\u0007\u001a\u0005\u0008\u0080\u0001\u0010XR\u001d\u0010\u0081\u0001\u001a\u00020\u001bX\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u0081\u0001\u0010X\"\u0005\u0008\u0082\u0001\u0010ZR\u0013\u0010\u0083\u0001\u001a\u00020\u001b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u0084\u0001\u001a\u00020\u001b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u0085\u0001\u001a\u00020\u001b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u0086\u0001\u001a\u00020\u001bX\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u0086\u0001\u0010X\"\u0005\u0008\u0087\u0001\u0010ZR\u0013\u0010\u0088\u0001\u001a\u00020\u001b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u0089\u0001\u001a\u00020\u001b8F\u00a2\u0006\u0007\u001a\u0005\u0008\u0089\u0001\u0010XR\u0013\u0010\u008a\u0001\u001a\u00020\u001b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u001f\u0010\u008b\u0001\u001a\u00020IX\u0086\u000e\u00a2\u0006\u0012\n\u0000\u001a\u0006\u0008\u008c\u0001\u0010\u008d\u0001\"\u0006\u0008\u008e\u0001\u0010\u008f\u0001R\u001f\u0010\u0090\u0001\u001a\u00020IX\u0086\u000e\u00a2\u0006\u0012\n\u0000\u001a\u0006\u0008\u0091\u0001\u0010\u008d\u0001\"\u0006\u0008\u0092\u0001\u0010\u008f\u0001R\u000f\u0010\u0093\u0001\u001a\u00020\u0005X\u0082D\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0094\u0001\u001a\u0005\u0018\u00010\u0095\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0096\u0001\u001a\u0004\u0018\u000108X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0097\u0001\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000f\u0010\u0098\u0001\u001a\u00020\u001bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u0099\u0001\u001a\u00020>8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u009a\u0001\u001a\u00030\u009b\u00018BX\u0082\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u009c\u0001\u0010\u009d\u0001R\u0013\u0010\u009e\u0001\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u001f\u0010\u009f\u0001\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u00a0\u0001\u0010 \"\u0005\u0008\u00a1\u0001\u0010\"R\u0012\u0010\u00a2\u0001\u001a\u0005\u0018\u00010\u00a3\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u00a4\u0001\u001a\u0005\u0018\u00010\u00a5\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\"\u0010\u00a6\u0001\u001a\u0005\u0018\u00010\u009b\u0001X\u0086\u000e\u00a2\u0006\u0012\n\u0000\u001a\u0006\u0008\u00a7\u0001\u0010\u009d\u0001\"\u0006\u0008\u00a8\u0001\u0010\u00a9\u0001R\u001d\u0010\u00aa\u0001\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u00ab\u0001\u0010a\"\u0005\u0008\u00ac\u0001\u0010cR\u000f\u0010\u00ad\u0001\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000f\u0010\u00ae\u0001\u001a\u00020\u001bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u00af\u0001\u001a\u0004\u0018\u00010\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u00b0\u0001\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\"\u0010\u00b1\u0001\u001a\u0005\u0018\u00010\u009b\u0001X\u0086\u000e\u00a2\u0006\u0012\n\u0000\u001a\u0006\u0008\u00b2\u0001\u0010\u009d\u0001\"\u0006\u0008\u00b3\u0001\u0010\u00a9\u0001R\"\u0010\u00b4\u0001\u001a\u0005\u0018\u00010\u00b5\u0001X\u0086\u000e\u00a2\u0006\u0012\n\u0000\u001a\u0006\u0008\u00b6\u0001\u0010\u00b7\u0001\"\u0006\u0008\u00b8\u0001\u0010\u00b9\u0001R\u001d\u0010\u00ba\u0001\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u00bb\u0001\u0010a\"\u0005\u0008\u00bc\u0001\u0010cR\u0011\u0010\u00bd\u0001\u001a\u0004\u0018\u00010%X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u00be\u0001\u001a\u00020\u00138\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u00bf\u0001\u001a\u00020\u00138\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u00c0\u0001\u001a\u00020\u00138\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u000f\u0010\u00c1\u0001\u001a\u00020\u001bX\u0082D\u00a2\u0006\u0002\n\u0000R\u000f\u0010\u00c2\u0001\u001a\u00020\u001bX\u0082D\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u00c3\u0001\u001a\u00020I8BX\u0082\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u00c4\u0001\u0010\u008d\u0001R\u0016\u0010\u00c5\u0001\u001a\u0005\u0018\u00010\u009b\u00018\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u000f\u0010\u00c6\u0001\u001a\u00020%X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u00c7\u0001\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u000f\u0010\u00c8\u0001\u001a\u00020%X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u00c9\u0001\u001a\u00020\u001bX\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u00ca\u0001\u0010X\"\u0005\u0008\u00cb\u0001\u0010ZR\u001d\u0010\u00cc\u0001\u001a\u00020\u001bX\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u00cd\u0001\u0010X\"\u0005\u0008\u00ce\u0001\u0010ZR\u000f\u0010\u00cf\u0001\u001a\u00020\u001bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000f\u0010\u00d0\u0001\u001a\u00020\u001bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u00d1\u0001\u001a\u00020\u001bX\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u00d2\u0001\u0010X\"\u0005\u0008\u00d3\u0001\u0010ZR\u000f\u0010\u00d4\u0001\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u00d5\u0001\u001a\u0005\u0018\u00010\u00d6\u00018\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u00d7\u0001\u001a\u00030\u00d8\u00018\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u00d9\u0001\u001a\u0005\u0018\u00010\u00b5\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001f\u0010\u00da\u0001\u001a\u0004\u0018\u00010%X\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u00db\u0001\u0010\'\"\u0005\u0008\u00dc\u0001\u0010)R\u0015\u0010\u00dd\u0001\u001a\u0004\u0018\u00010%8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u00de\u0001\u001a\u0005\u0018\u00010\u00df\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u00e0\u0001\u001a\t\u0012\u0002\u0008\u0003\u0018\u00010\u00e1\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u00e2\u0001\u001a\u00020\u00138\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u00e3\u0001\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u00e4\u0001\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u00e5\u0001\u001a\u0005\u0018\u00010\u00e6\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u00e7\u0001\u001a\u00020\u001bX\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u00e8\u0001\u0010X\"\u0005\u0008\u00e9\u0001\u0010ZR\u000f\u0010\u00ea\u0001\u001a\u00020\u001bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u00eb\u0001\u001a\u00020\u001b8F\u00a2\u0006\u0007\u001a\u0005\u0008\u00ec\u0001\u0010XR\u0016\u0010\u00ed\u0001\u001a\u0005\u0018\u00010\u00ee\u00018\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u00ef\u0001\u001a\u00020\u001b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u00f0\u0001\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u00f1\u0001\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u00f2\u0001\u0010a\"\u0005\u0008\u00f3\u0001\u0010cR\u0012\u0010\u00f4\u0001\u001a\u0005\u0018\u00010\u00f5\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u00f6\u0001\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u00f7\u0001\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u00f8\u0001\u001a\u00020\u00138\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u000f\u0010\u00f9\u0001\u001a\u000208X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u00fa\u0001\u001a\u00020\u001bX\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u00fb\u0001\u0010X\"\u0005\u0008\u00fc\u0001\u0010ZR\u000f\u0010\u00fd\u0001\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u00fe\u0001\u001a\u0004\u0018\u000108X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u00ff\u0001\u001a\u00020\u001b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u000f\u0010\u0080\u0002\u001a\u00020\u0005X\u0082D\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u0081\u0002\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0082\u0002\u001a\u0005\u0018\u00010\u0095\u00018\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u000f\u0010\u0083\u0002\u001a\u00020IX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000f\u0010\u0084\u0002\u001a\u00020IX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000f\u0010\u0085\u0002\u001a\u00020IX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000f\u0010\u0086\u0002\u001a\u00020\u0005X\u0082D\u00a2\u0006\u0002\n\u0000R\u001f\u0010\u0087\u0002\u001a\u00020IX\u0086\u000e\u00a2\u0006\u0012\n\u0000\u001a\u0006\u0008\u0088\u0002\u0010\u008d\u0001\"\u0006\u0008\u0089\u0002\u0010\u008f\u0001R\u000f\u0010\u008a\u0002\u001a\u00020IX\u0082D\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u008b\u0002\u001a\u00020%8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u008c\u0002\u001a\u00020I8BX\u0082\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u008d\u0002\u0010\u008d\u0001R\u0011\u0010\u008e\u0002\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000f\u0010\u008f\u0002\u001a\u00020\u001bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0090\u0002\u001a\u0005\u0018\u00010\u0091\u0002X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\"\u0010\u0092\u0002\u001a\u0005\u0018\u00010\u0093\u0002X\u0086\u000e\u00a2\u0006\u0012\n\u0000\u001a\u0006\u0008\u0094\u0002\u0010\u0095\u0002\"\u0006\u0008\u0096\u0002\u0010\u0097\u0002R\u0016\u0010\u0098\u0002\u001a\u0005\u0018\u00010\u0099\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u009a\u0002\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u009b\u0002\u001a\u0005\u0018\u00010\u009c\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u009d\u0002\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u009e\u0002\u001a\u0005\u0018\u00010\u009f\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u00a0\u0002\u001a\u0005\u0018\u00010\u00a1\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u00a2\u0002\u001a\u0005\u0018\u00010\u00a1\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R3\u0010\u00a3\u0002\u001a\"\u0012\u0004\u0012\u00020\u0005\u0012\u0005\u0012\u00030\u00a5\u00020\u00a4\u0002j\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0005\u0012\u00030\u00a5\u0002`\u00a6\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R1\u0010\u00a7\u0002\u001a \u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u001b0\u00a4\u0002j\u000f\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u001b`\u00a6\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u00a8\u0002\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u00a9\u0002\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u00aa\u0002\u001a\u00030\u00d8\u00018\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u00ab\u0002\u001a\u00030\u009b\u00018BX\u0082\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u00ac\u0002\u0010\u009d\u0001\u00a8\u0006\u00df\u0003"
    }
    d2 = {
        "Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;",
        "Lcom/dgiot/speedmonitoring/base/BaseActivity;",
        "Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;",
        "()V",
        "DEFAULT_H_STEP_PANEL",
        "",
        "DEFAULT_V_STEP_PANEL",
        "NO_ACTION",
        "agreePopup",
        "Lcom/lxj/xpopup/core/BasePopupView;",
        "backInvokedCallback",
        "Landroid/window/OnBackInvokedCallback;",
        "base",
        "Lcom/dgiot/speedmonitoring/base/Base;",
        "getBase",
        "()Lcom/dgiot/speedmonitoring/base/Base;",
        "setBase",
        "(Lcom/dgiot/speedmonitoring/base/Base;)V",
        "bigWindowZ",
        "",
        "bluetoothAdapter",
        "Landroid/bluetooth/BluetoothAdapter;",
        "bluetoothDeviceReceiver",
        "Landroid/content/BroadcastReceiver;",
        "bluetoothHeadset",
        "Landroid/bluetooth/BluetoothProfile;",
        "canUpdateLoadTime",
        "",
        "cardPlayBackTime",
        "",
        "centerPopup",
        "getCenterPopup",
        "()Lcom/lxj/xpopup/core/BasePopupView;",
        "setCenterPopup",
        "(Lcom/lxj/xpopup/core/BasePopupView;)V",
        "changeStream",
        "changeStreamUrl",
        "",
        "getChangeStreamUrl",
        "()Ljava/lang/String;",
        "setChangeStreamUrl",
        "(Ljava/lang/String;)V",
        "checkLiveVideoStreamRunnable",
        "com/dgiot/speedmonitoring/ui/live/VideoLiveActivity$checkLiveVideoStreamRunnable$1",
        "Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity$checkLiveVideoStreamRunnable$1;",
        "childFragments",
        "",
        "Landroidx/fragment/app/Fragment;",
        "getChildFragments",
        "()Ljava/util/List;",
        "setChildFragments",
        "(Ljava/util/List;)V",
        "clickGoWebIndex",
        "curDefinition",
        "currentAction",
        "currentRetryTask",
        "Ljava/lang/Runnable;",
        "dGRenderController",
        "Lcom/android/dgplayer/DGRenderController;",
        "getDGRenderController",
        "()Lcom/android/dgplayer/DGRenderController;",
        "definitionIcon",
        "",
        "getDefinitionIcon",
        "()[I",
        "setDefinitionIcon",
        "([I)V",
        "definitionLandIcon",
        "getDefinitionLandIcon",
        "setDefinitionLandIcon",
        "delayCloseVideoRunnable",
        "delayHideLandControlRunAble",
        "delayRetryMillis",
        "",
        "delaySleepRunnable",
        "Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity$DelaySleepRunnable;",
        "deviceDirectionReversalValue",
        "getDeviceDirectionReversalValue",
        "setDeviceDirectionReversalValue",
        "deviceIccid",
        "devicePermission",
        "deviceRole",
        "dgAudioController",
        "Lcom/android/dgplayer/DGAudioController;",
        "dgRenderController",
        "doubleVideo",
        "firstLoad",
        "getFirstLoad",
        "()Z",
        "setFirstLoad",
        "(Z)V",
        "firstOpen",
        "getFirstOpen",
        "setFirstOpen",
        "firstOpenSound",
        "frameSizeHeight",
        "getFrameSizeHeight",
        "()I",
        "setFrameSizeHeight",
        "(I)V",
        "frameSizeWidth",
        "getFrameSizeWidth",
        "setFrameSizeWidth",
        "hideSystemUIAction",
        "initMenuSelectDefaultIndex",
        "getInitMenuSelectDefaultIndex",
        "setInitMenuSelectDefaultIndex",
        "initSmallY",
        "iotId",
        "isBadVideo",
        "isCanAutoRetry",
        "isCanWritePng",
        "isClickGoWeb",
        "isClickGoYun",
        "isFirstOpenByMessage",
        "isFullScreen",
        "isHandUp",
        "isHideInternal",
        "setHideInternal",
        "isHideSoundView",
        "setHideSoundView",
        "isHighRequestVideoUrl",
        "isInitMoveFrag",
        "isIsRunningOpenRecordPerm",
        "setIsRunningOpenRecordPerm",
        "isJumpFromPlayBack",
        "isLoadUpDownView",
        "isPlayRecord",
        "isPlaying",
        "isReLoadPlayer",
        "setReLoadPlayer",
        "isRefreshVideoRePlay",
        "isRequestNewDeviceInfo",
        "isRetryActive",
        "isShowHintFlag",
        "setShowHintFlag",
        "isStartWritePng",
        "isStopPlayState",
        "isThreeVideo",
        "lastRxByte",
        "getLastRxByte",
        "()J",
        "setLastRxByte",
        "(J)V",
        "lastTxBytes",
        "getLastTxBytes",
        "setLastTxBytes",
        "ledCloseTime",
        "ledCotrolHandler",
        "Landroid/os/Handler;",
        "ledDelayClose",
        "ledHintPop",
        "ledValueState",
        "levelPic",
        "livePlayerController",
        "Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerController;",
        "getLivePlayerController",
        "()Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerController;",
        "lowPowerReLoadNumFlag",
        "mAdHintRechargePops",
        "getMAdHintRechargePops",
        "setMAdHintRechargePops",
        "mDGPlayerControllerInterface",
        "Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerControllerInterface;",
        "mDGPlayerFileControllerInterface",
        "Lcom/dgiot/speedmonitoring/ui/live/controller/PlayFileControllerInterface;",
        "mLivePlayerController",
        "getMLivePlayerController",
        "setMLivePlayerController",
        "(Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerController;)V",
        "mNavigationBarHeight",
        "getMNavigationBarHeight",
        "setMNavigationBarHeight",
        "mPlayBackType",
        "mResumed",
        "mSocketMessageReceiver",
        "mStatusBarHeight",
        "mYunPlayerController",
        "getMYunPlayerController",
        "setMYunPlayerController",
        "marqueeText",
        "Landroid/widget/TextView;",
        "getMarqueeText",
        "()Landroid/widget/TextView;",
        "setMarqueeText",
        "(Landroid/widget/TextView;)V",
        "maxReLoadNum",
        "getMaxReLoadNum",
        "setMaxReLoadNum",
        "messageTime",
        "moveFragBigY",
        "moveFragSmallX",
        "moveFragSmallY",
        "needPlayYun1",
        "needPlayYun2",
        "netSpeed",
        "getNetSpeed",
        "nowPlayerController",
        "nowRtmpAddress",
        "nowSelectTabIndex",
        "oldAddress",
        "onlyMessageTimeInit",
        "getOnlyMessageTimeInit",
        "setOnlyMessageTimeInit",
        "onlyMessageTimeLoad",
        "getOnlyMessageTimeLoad",
        "setOnlyMessageTimeLoad",
        "onlyOnPause",
        "openLedHint",
        "openPage",
        "getOpenPage",
        "setOpenPage",
        "pageSource",
        "playState",
        "Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerControllerInterface$Status;",
        "playType",
        "Lcom/dgiot/speedmonitoring/ui/live/PlayType;",
        "playerMobileNetworkTipsTv",
        "productName",
        "getProductName",
        "setProductName",
        "productSn",
        "ptzScheduleExecutorService",
        "Ljava/util/concurrent/ScheduledExecutorService;",
        "ptzScheduledHandle",
        "Ljava/util/concurrent/ScheduledFuture;",
        "radiusSize",
        "reLoadNum",
        "rechargeHintPopup",
        "recordMenuAdapter",
        "Lcom/dgiot/speedmonitoring/adapter/RecordMenuAdapter;",
        "recordPermission",
        "getRecordPermission",
        "setRecordPermission",
        "refreshWindow",
        "renderState",
        "getRenderState",
        "rightDefinitionSelectPopup",
        "Lcom/dgiot/speedmonitoring/ui/pop/RightDefinitionSelectPopup;",
        "screenIsVerticalScreen",
        "screenWidthVerticalScreen",
        "selectStream",
        "getSelectStream",
        "setSelectStream",
        "shotIv",
        "Landroid/widget/ImageView;",
        "smallVideoHeight",
        "smallVideoWidth",
        "smallWindowZ",
        "speedTimer",
        "startSpeaker",
        "getStartSpeaker",
        "setStartSpeaker",
        "step",
        "task",
        "tempIsBadVideo",
        "testNum",
        "threeSmallVideoHeight",
        "uiHandler",
        "upCloseTime",
        "upShowTime",
        "upStartTimer",
        "upTime",
        "upTouchTime",
        "getUpTouchTime",
        "setUpTouchTime",
        "upUpdaterSize",
        "upVideoUrl",
        "upVideoUrlTime",
        "getUpVideoUrlTime",
        "updatePopup",
        "userOperateLed",
        "videoBufferingProgressBar",
        "Landroid/widget/ProgressBar;",
        "videoLiveClickControl",
        "Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveClickControl;",
        "getVideoLiveClickControl",
        "()Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveClickControl;",
        "setVideoLiveClickControl",
        "(Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveClickControl;)V",
        "videoLiveViewControl",
        "Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;",
        "videoPanelHeight",
        "videoPanelRl",
        "Landroid/widget/RelativeLayout;",
        "videoPanelTopMargin",
        "videoRecordFragment",
        "Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;",
        "videoRecordYun1Fragment",
        "Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;",
        "videoRecordYunFragment",
        "videoSizePositionState",
        "Ljava/util/HashMap;",
        "Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;",
        "Lkotlin/collections/HashMap;",
        "videoSizeState",
        "videoSmallHeight",
        "videoSmallWidth",
        "yunPlayType",
        "yunPlayerController",
        "getYunPlayerController",
        "addStarView",
        "",
        "starViewContainerHeight",
        "cancelShotAnimator",
        "changeDefinition",
        "definition",
        "changeHeaderViewPortrait",
        "changeSingleCurDefinitionView",
        "choose",
        "changeToLandscapeView",
        "changgeTab",
        "pos",
        "msgTime",
        "checkIfHeadset",
        "device",
        "Landroid/bluetooth/BluetoothDevice;",
        "checkIfUpdate",
        "newVersion",
        "nowVersion",
        "checkRender",
        "closePlayView",
        "closeVideoStreamParam",
        "controlBottomMenuShow",
        "showPos",
        "controlRecordingView",
        "isShow",
        "controlVol",
        "open",
        "isExitActivity",
        "convertFileControllerStatus",
        "status",
        "Lcom/dgiot/speedmonitoring/ui/live/controller/PlayFileControllerInterface$Status;",
        "dealChangePortrait",
        "dealLedResult",
        "sn",
        "message",
        "delayCloseVideo",
        "extractIpFromRtmpUrl",
        "rtmpUrl",
        "finish",
        "getCloseRecordAddress",
        "getDGAudioController",
        "getPauseStateText",
        "state",
        "getRenderController",
        "getViewBinding",
        "getYunInfo",
        "goRecord_card",
        "goRecord_yun1",
        "goRecord_yun2",
        "handlePageBack",
        "hideAdMenu",
        "hideProgressView",
        "hideSmallVideo",
        "hideSystemUI",
        "initBluetoothDeviceReceiver",
        "initBluetoothListener",
        "initBottomControl",
        "initBundle",
        "intent",
        "Landroid/content/Intent;",
        "initControlView",
        "initData",
        "initDelayRetryMillis",
        "initHeader",
        "initOnBackPressedDispatcher",
        "initOperateControl",
        "initPlayControl",
        "initRecordMenuPosition",
        "initShowYunRechargeHintDialog",
        "initTimeViewHeight",
        "initTips",
        "initVideoControl",
        "initVideoRecordFragment",
        "initVideoRecordYun1Fragment",
        "initVideoRecordYun2Fragment",
        "initView",
        "initWebRtc",
        "initYunView",
        "initialize",
        "isCanRetryLiveVideoStreamTask",
        "loadVideo",
        "onBackPressed",
        "onConfigurationChanged",
        "newConfig",
        "Landroid/content/res/Configuration;",
        "onDestroy",
        "onKeyDown",
        "keyCode",
        "event",
        "Landroid/view/KeyEvent;",
        "onNewIntent",
        "onPause",
        "onResume",
        "onStart",
        "onStop",
        "onTouchEvent",
        "Landroid/view/MotionEvent;",
        "onWindowFocusChanged",
        "hasFocus",
        "parseRtmpAddress",
        "jsonData",
        "reLoadSleepLiveVideo",
        "reOpenRecordVideo",
        "reSendLiveVideoStreamParam",
        "refreshLoadVideo",
        "refreshRecordMenuPosition",
        "refreshSpeed",
        "refreshVideoSurface",
        "surfaceView",
        "Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;",
        "requestLedSet",
        "ledValue",
        "requestLiveVideoStreamParam",
        "resetShotIvState",
        "selectBaseInfo",
        "selectLedState",
        "sendPTZActionControl",
        "action",
        "setAlarmJump",
        "setDefinitionPopResult",
        "type",
        "Lcom/dgiot/speedmonitoring/ui/pop/BottomDefinitionSelectPopup$DefinitionType;",
        "setLed",
        "setMuteView",
        "setPlayControlImage",
        "ifOpen",
        "setProgressIndicatorPosition",
        "isUpdateTopMargin",
        "setVoxSelect",
        "select",
        "showAdMenu",
        "showExitDialog",
        "showHintDialog",
        "showPermissionHint",
        "showPermissionsErrorHint",
        "permissions",
        "",
        "showRechargeDialog",
        "expirationTime",
        "iccid",
        "showRecordMenuView",
        "menuPosition",
        "showUpdateVersion",
        "deviceUse",
        "showVolumeControl",
        "showYunRechargeHintDialog",
        "showYunViewState",
        "show",
        "startDeviceInfoService",
        "startLoopTips",
        "startOpenVideo",
        "url",
        "startRecord",
        "startRetry",
        "startTimer",
        "startVideo",
        "stopPTZActionControl",
        "stopRetry",
        "stopTimer",
        "stopVideo",
        "updateCardPauseState",
        "updateCardPauseStateText",
        "updateDelaySleepRunnable",
        "updatePlayType",
        "updateProductName",
        "updateRecordMenuPositionWhenClickMessage",
        "updateVideoUrlTime",
        "updateYunIbSpeakerState",
        "updateYunPauseStateText",
        "videoRecordYunHideProgress",
        "videoRecordYunShowLoadView",
        "videoRecordYunStartPlay",
        "dgFileItems",
        "Lcom/android/dgplayer/DGFileItem;",
        "playTypes",
        "Companion",
        "DelaySleepRunnable",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity$Companion;

.field private static final TAG:Ljava/lang/String; = "VideoLiveActivityLog:"

.field public static isRunning:Z

.field public static openState:Z


# instance fields
.field private final DEFAULT_H_STEP_PANEL:I

.field private final DEFAULT_V_STEP_PANEL:I

.field private final NO_ACTION:I

.field private agreePopup:Lcom/lxj/xpopup/core/BasePopupView;

.field private backInvokedCallback:Landroid/window/OnBackInvokedCallback;

.field public bigWindowZ:F

.field private bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private bluetoothDeviceReceiver:Landroid/content/BroadcastReceiver;

.field private bluetoothHeadset:Landroid/bluetooth/BluetoothProfile;

.field private canUpdateLoadTime:Z

.field public cardPlayBackTime:D

.field private centerPopup:Lcom/lxj/xpopup/core/BasePopupView;

.field public changeStream:Z

.field private changeStreamUrl:Ljava/lang/String;

.field private final checkLiveVideoStreamRunnable:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity$checkLiveVideoStreamRunnable$1;

.field private childFragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field public clickGoWebIndex:I

.field public curDefinition:I

.field public currentAction:I

.field private currentRetryTask:Ljava/lang/Runnable;

.field private definitionIcon:[I

.field private definitionLandIcon:[I

.field public delayCloseVideoRunnable:Ljava/lang/Runnable;

.field public delayHideLandControlRunAble:Ljava/lang/Runnable;

.field private delayRetryMillis:J

.field public delaySleepRunnable:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity$DelaySleepRunnable;

.field private deviceDirectionReversalValue:[I

.field public deviceIccid:Ljava/lang/String;

.field public devicePermission:Ljava/lang/String;

.field public deviceRole:I

.field private dgAudioController:Lcom/android/dgplayer/DGAudioController;

.field private dgRenderController:Lcom/android/dgplayer/DGRenderController;

.field public doubleVideo:Z

.field private firstLoad:Z

.field private firstOpen:Z

.field private firstOpenSound:Z

.field private frameSizeHeight:I

.field private frameSizeWidth:I

.field private final hideSystemUIAction:Ljava/lang/Runnable;

.field private initMenuSelectDefaultIndex:Z

.field public initSmallY:F

.field public iotId:Ljava/lang/String;

.field public isBadVideo:Z

.field public isCanAutoRetry:Z

.field public isCanWritePng:Z

.field public isClickGoWeb:Z

.field public isClickGoYun:Z

.field public isFirstOpenByMessage:Z

.field public isFullScreen:Z

.field private isHideInternal:Z

.field private isHideSoundView:Z

.field public isInitMoveFrag:Z

.field private isIsRunningOpenRecordPerm:Z

.field public isJumpFromPlayBack:Z

.field public isLoadUpDownView:Z

.field public isPlayRecord:Z

.field private isReLoadPlayer:Z

.field public isRefreshVideoRePlay:Z

.field public isRequestNewDeviceInfo:Z

.field public volatile isRetryActive:Z

.field private isShowHintFlag:Z

.field public isStartWritePng:Z

.field public isThreeVideo:Z

.field private lastRxByte:J

.field private lastTxBytes:J

.field private final ledCloseTime:I

.field private ledCotrolHandler:Landroid/os/Handler;

.field private final ledDelayClose:Ljava/lang/Runnable;

.field private ledHintPop:Lcom/lxj/xpopup/core/BasePopupView;

.field private ledValueState:Z

.field public levelPic:[I

.field public lowPowerReLoadNumFlag:I

.field private mAdHintRechargePops:Lcom/lxj/xpopup/core/BasePopupView;

.field private mDGPlayerControllerInterface:Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerControllerInterface;

.field private mDGPlayerFileControllerInterface:Lcom/dgiot/speedmonitoring/ui/live/controller/PlayFileControllerInterface;

.field private mLivePlayerController:Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerController;

.field private mNavigationBarHeight:I

.field private mPlayBackType:I

.field private mResumed:Z

.field private mSocketMessageReceiver:Landroid/content/BroadcastReceiver;

.field public mStatusBarHeight:I

.field private mYunPlayerController:Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerController;

.field private marqueeText:Landroid/widget/TextView;

.field private maxReLoadNum:I

.field private messageTime:Ljava/lang/String;

.field public moveFragBigY:F

.field public moveFragSmallX:F

.field public moveFragSmallY:F

.field private final needPlayYun1:Z

.field private final needPlayYun2:Z

.field public nowPlayerController:Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerController;

.field private nowRtmpAddress:Ljava/lang/String;

.field public nowSelectTabIndex:I

.field private oldAddress:Ljava/lang/String;

.field private onlyMessageTimeInit:Z

.field private onlyMessageTimeLoad:Z

.field private onlyOnPause:Z

.field private openLedHint:Z

.field private openPage:Z

.field private pageSource:I

.field public playState:Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerControllerInterface$Status;

.field public playType:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

.field private playerMobileNetworkTipsTv:Landroid/widget/TextView;

.field private productName:Ljava/lang/String;

.field public productSn:Ljava/lang/String;

.field private ptzScheduleExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private ptzScheduledHandle:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field public radiusSize:F

.field public reLoadNum:I

.field private rechargeHintPopup:Lcom/lxj/xpopup/core/BasePopupView;

.field private recordMenuAdapter:Lcom/dgiot/speedmonitoring/adapter/RecordMenuAdapter;

.field private recordPermission:Z

.field private refreshWindow:Z

.field public rightDefinitionSelectPopup:Lcom/dgiot/speedmonitoring/ui/pop/RightDefinitionSelectPopup;

.field public screenIsVerticalScreen:Z

.field public screenWidthVerticalScreen:I

.field private selectStream:I

.field private shotIv:Landroid/widget/ImageView;

.field public smallVideoHeight:I

.field public smallVideoWidth:I

.field public smallWindowZ:F

.field private final speedTimer:Ljava/lang/Runnable;

.field private startSpeaker:Z

.field private step:I

.field private task:Ljava/lang/Runnable;

.field public tempIsBadVideo:Z

.field private final testNum:I

.field public threeSmallVideoHeight:I

.field public uiHandler:Landroid/os/Handler;

.field private upCloseTime:J

.field private upShowTime:J

.field private upStartTimer:J

.field private final upTime:I

.field private upTouchTime:J

.field private final upUpdaterSize:J

.field public upVideoUrl:Ljava/lang/String;

.field private updatePopup:Lcom/lxj/xpopup/core/BasePopupView;

.field private userOperateLed:Z

.field private videoBufferingProgressBar:Landroid/widget/ProgressBar;

.field private videoLiveClickControl:Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveClickControl;

.field public videoLiveViewControl:Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;

.field public videoPanelHeight:I

.field public videoPanelRl:Landroid/widget/RelativeLayout;

.field public videoPanelTopMargin:I

.field public videoRecordFragment:Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;

.field public videoRecordYun1Fragment:Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;

.field public videoRecordYunFragment:Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;

.field public videoSizePositionState:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/dgiot/speedmonitoring/ui/live/VideoPosition;",
            ">;"
        }
    .end annotation
.end field

.field public videoSizeState:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public videoSmallHeight:I

.field public videoSmallWidth:I

.field public yunPlayType:Lcom/dgiot/speedmonitoring/ui/live/PlayType;


# direct methods
.method public static synthetic $r8$lambda$-xQLJ78bdGiFMcAPOjoMBrZaoG4(Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->ledDelayClose$lambda$18(Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3VPqPcZt4Qh2ZXCTGNMKvFScuUw(Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->goRecord_yun2$lambda$2(Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5afIp1kVAGVUYAQl7CDGWdKExUM(Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->startVideo$lambda$14(Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Bh8BmfM-hUoZ0CCYxKrGnr4d2Jw(Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->goRecord_yun1$lambda$1(Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DFWAV6rFFP4lbENDhsbnjn2yYTo(Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->startVideo$lambda$13(Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$E0npuvcF2UrXyuIK7zJ6WiNSQvs(Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->sendPTZActionControl$lambda$8(Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EiPqPtP642tQ8vBTt2j5TyJ1OM8(Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->onConfigurationChanged$lambda$24(Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KLAdLVy-HQbYNHdDqaXHL8nubhU(Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->onResume$lambda$22(Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$M-5h1PsOaGH0JNFASGgmdzeQ8cM(Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->controlVol$lambda$10(Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$M9Os6zy0fnxefKu9xVXOdYzE09c(Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->delayHideLandControlRunAble$lambda$6(Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Qzx0b_MkxowthX7kj9kfCAwCjyQ(Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->controlBottomMenuShow$lambda$9(Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UkpOc0mT8AABBmaSGMsZlDB2FYU(Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->onConfigurationChanged$lambda$23(Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VltdojMkwpRSTDp4Q0QGTJlJCjE(Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;ILjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->updateRecordMenuPositionWhenClickMessage$lambda$3(Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VxZzZTYRzVUosPwmL4DPGHfKnzg(Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoRecordYunStartPlay$lambda$25(Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZRXxOVoNBKlSpuX6sjyLqwB-z5M(Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->startVideo$lambda$15(Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_AMoMopZb3VBTF-RkvcwXDt12uA(Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->hideSystemUIAction$lambda$0(Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$flzUfQ3EFlwyI8WyZtlAafo5VcU(Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->initRecordMenuPosition$lambda$4(Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fnPWOo4wYzlvOVs4KjYmTRF01cc(Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->initControlView$lambda$7(Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qhjb1gGUtvOiiz17KqHascdHGTM(Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->selectLedState$lambda$17(Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$x5RfeRFZWVkfVvMMaeyhc5LCse0(Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->refreshSpeed$lambda$11(Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->Companion:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 121
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/base/BaseActivity;-><init>()V

    const/4 v0, 0x1

    .line 133
    iput v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->pageSource:I

    const-string v1, ""

    .line 134
    iput-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->messageTime:Ljava/lang/String;

    .line 145
    sget-object v2, Lcom/dgiot/speedmonitoring/ui/live/PlayType;->LIVE_VIDEO:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    iput-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->playType:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    .line 151
    sget-object v2, Lcom/dgiot/speedmonitoring/ui/live/PlayType;->CLOUD_STORAGE_INTERNAL_VIDEO:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    iput-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->yunPlayType:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    const/4 v2, -0x1

    .line 175
    iput v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoPanelTopMargin:I

    .line 177
    iput-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->screenIsVerticalScreen:Z

    const/high16 v2, -0x40800000    # -1.0f

    .line 185
    iput v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->moveFragBigY:F

    .line 198
    new-instance v2, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity$$ExternalSyntheticLambda5;-><init>(Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;)V

    iput-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->hideSystemUIAction:Ljava/lang/Runnable;

    .line 214
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/List;

    iput-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->childFragments:Ljava/util/List;

    .line 562
    iput-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->openPage:Z

    .line 565
    sget v2, Lcom/dgiot/speedmonitoring/R$drawable;->icon_signal4g_1:I

    .line 566
    sget v3, Lcom/dgiot/speedmonitoring/R$drawable;->icon_signal4g_2:I

    .line 567
    sget v4, Lcom/dgiot/speedmonitoring/R$drawable;->icon_signal4g_3:I

    .line 568
    sget v5, Lcom/dgiot/speedmonitoring/R$drawable;->icon_signal4g_4:I

    .line 569
    sget v6, Lcom/dgiot/speedmonitoring/R$drawable;->icon_signal4g:I

    filled-new-array {v2, v3, v4, v5, v6}, [I

    move-result-object v2

    .line 564
    iput-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->levelPic:[I

    .line 686
    new-instance v2, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity$$ExternalSyntheticLambda6;-><init>(Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;)V

    iput-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->delayHideLandControlRunAble:Ljava/lang/Runnable;

    const/high16 v2, 0x40a00000    # 5.0f

    .line 711
    iput v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->smallWindowZ:F

    const/high16 v2, 0x42c80000    # 100.0f

    .line 713
    iput v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->bigWindowZ:F

    const/high16 v2, 0x41a00000    # 20.0f

    .line 715
    iput v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->radiusSize:F

    .line 717
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizeState:Ljava/util/HashMap;

    .line 719
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizePositionState:Ljava/util/HashMap;

    .line 722
    const/4 v0, 0x0

    iput v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->selectStream:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->curDefinition:I

    .line 725
    iput-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->changeStreamUrl:Ljava/lang/String;

    .line 817
    sget v2, Lcom/dgiot/speedmonitoring/R$drawable;->icon_gq_cn:I

    sget v3, Lcom/dgiot/speedmonitoring/R$drawable;->icon_cq_cn:I

    filled-new-array {v2, v3}, [I

    move-result-object v2

    iput-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->definitionLandIcon:[I

    .line 818
    sget v2, Lcom/dgiot/speedmonitoring/R$drawable;->ic_gq_cn:I

    sget v3, Lcom/dgiot/speedmonitoring/R$drawable;->ic_cq_cn:I

    filled-new-array {v2, v3}, [I

    move-result-object v2

    iput-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->definitionIcon:[I

    const/16 v2, 0xa

    .line 827
    iput v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->NO_ACTION:I

    .line 831
    iput v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->currentAction:I

    .line 835
    iput v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->DEFAULT_H_STEP_PANEL:I

    .line 836
    iput v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->DEFAULT_V_STEP_PANEL:I

    .line 837
    iput v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->step:I

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    .line 986
    filled-new-array {v4, v0, v2, v3}, [I

    move-result-object v2

    iput-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->deviceDirectionReversalValue:[I

    .line 1091
    iput v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->nowSelectTabIndex:I

    const-wide/16 v2, -0x1

    .line 1298
    iput-wide v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->upUpdaterSize:J

    .line 1300
    iput-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->doubleVideo:Z

    .line 1310
    new-instance v2, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity$mDGPlayerControllerInterface$1;

    invoke-direct {v2, p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity$mDGPlayerControllerInterface$1;-><init>(Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;)V

    check-cast v2, Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerControllerInterface;

    iput-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->mDGPlayerControllerInterface:Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerControllerInterface;

    .line 1370
    iput-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isHideSoundView:Z

    .line 1372
    new-instance v2, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity$mDGPlayerFileControllerInterface$1;

    invoke-direct {v2, p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity$mDGPlayerFileControllerInterface$1;-><init>(Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;)V

    check-cast v2, Lcom/dgiot/speedmonitoring/ui/live/controller/PlayFileControllerInterface;

    iput-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->mDGPlayerFileControllerInterface:Lcom/dgiot/speedmonitoring/ui/live/controller/PlayFileControllerInterface;

    .line 1498
    new-instance v2, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity$speedTimer$1;

    invoke-direct {v2, p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity$speedTimer$1;-><init>(Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;)V

    check-cast v2, Ljava/lang/Runnable;

    iput-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->speedTimer:Ljava/lang/Runnable;

    .line 1595
    iput-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->firstOpenSound:Z

    .line 1597
    new-instance v2, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity$delayCloseVideoRunnable$1;

    invoke-direct {v2, p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity$delayCloseVideoRunnable$1;-><init>(Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;)V

    check-cast v2, Ljava/lang/Runnable;

    iput-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->delayCloseVideoRunnable:Ljava/lang/Runnable;

    .line 1702
    iput-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->firstOpen:Z

    .line 1716
    iput v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->lowPowerReLoadNumFlag:I

    .line 1718
    iput v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->maxReLoadNum:I

    .line 1731
    new-instance v2, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity$checkLiveVideoStreamRunnable$1;

    invoke-direct {v2, p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity$checkLiveVideoStreamRunnable$1;-><init>(Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;)V

    iput-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->checkLiveVideoStreamRunnable:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity$checkLiveVideoStreamRunnable$1;

    const-wide/16 v2, 0x1388

    .line 1772
    iput-wide v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->delayRetryMillis:J

    .line 1834
    iput-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->nowRtmpAddress:Ljava/lang/String;

    .line 1889
    iput-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->firstLoad:Z

    .line 1998
    iput-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->openLedHint:Z

    const v2, 0x493e0

    .line 2036
    iput v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->ledCloseTime:I

    .line 2053
    new-instance v2, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity$$ExternalSyntheticLambda7;-><init>(Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;)V

    iput-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->ledDelayClose:Ljava/lang/Runnable;

    .line 2096
    iput-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->upVideoUrl:Ljava/lang/String;

    .line 2113
    iput-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->oldAddress:Ljava/lang/String;

    .line 2285
    new-instance v1, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity$DelaySleepRunnable;

    invoke-direct {v1, p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity$DelaySleepRunnable;-><init>(Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;)V

    iput-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->delaySleepRunnable:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity$DelaySleepRunnable;

    .line 2659
    iput v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->clickGoWebIndex:I

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 2913
    iput-wide v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->cardPlayBackTime:D

    return-void
.end method

.method public static final synthetic access$checkIfUpdate(Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 121
    invoke-direct {p0, p1, p2}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->checkIfUpdate(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$controlVol(Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;ZZ)V
    .locals 0

    .line 121
    invoke-direct {p0, p1, p2}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->controlVol(ZZ)V

    return-void
.end method

.method public static final synthetic access$getAgreePopup$p(Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;)Lcom/lxj/xpopup/core/BasePopupView;
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->agreePopup:Lcom/lxj/xpopup/core/BasePopupView;

    return-object p0
.end method

.method public static final synthetic access$getBase$p$s1400185878(Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;)Lcom/dgiot/speedmonitoring/base/Base;
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->base:Lcom/dgiot/speedmonitoring/base/Base;

    return-object p0
.end method

.method public static final synthetic access$getBinding$p$s1400185878(Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;)Landroidx/viewbinding/ViewBinding;
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    return-object p0
.end method

.method public static final synthetic access$getBluetoothHeadset$p(Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;)Landroid/bluetooth/BluetoothProfile;
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->bluetoothHeadset:Landroid/bluetooth/BluetoothProfile;

    return-object p0
.end method

.method public static final synthetic access$getCurrentRetryTask$p(Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->currentRetryTask:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static final synthetic access$getDelayRetryMillis$p(Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;)J
    .locals 2

    .line 121
    iget-wide v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->delayRetryMillis:J

    return-wide v0
.end method

.method public static final synthetic access$getLedHintPop$p(Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;)Lcom/lxj/xpopup/core/BasePopupView;
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->ledHintPop:Lcom/lxj/xpopup/core/BasePopupView;

    return-object p0
.end method

.method public static final synthetic access$getNowRtmpAddress$p(Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;)Ljava/lang/String;
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->nowRtmpAddress:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getRechargeHintPopup$p(Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;)Lcom/lxj/xpopup/core/BasePopupView;
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->rechargeHintPopup:Lcom/lxj/xpopup/core/BasePopupView;

    return-object p0
.end method

.method public static final synthetic access$getUpdatePopup$p(Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;)Lcom/lxj/xpopup/core/BasePopupView;
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->updatePopup:Lcom/lxj/xpopup/core/BasePopupView;

    return-object p0
.end method

.method public static final synthetic access$parseRtmpAddress(Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 121
    invoke-direct {p0, p1}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->parseRtmpAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$refreshSpeed(Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;)V
    .locals 0

    .line 121
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->refreshSpeed()V

    return-void
.end method

.method public static final synthetic access$setBluetoothHeadset$p(Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;Landroid/bluetooth/BluetoothProfile;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->bluetoothHeadset:Landroid/bluetooth/BluetoothProfile;

    return-void
.end method

.method public static final synthetic access$setCurrentRetryTask$p(Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;Ljava/lang/Runnable;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->currentRetryTask:Ljava/lang/Runnable;

    return-void
.end method

.method public static final synthetic access$showHintDialog(Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;)V
    .locals 0

    .line 121
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->showHintDialog()V

    return-void
.end method

.method public static final synthetic access$showPermissionsErrorHint(Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;Ljava/util/List;)V
    .locals 0

    .line 121
    invoke-direct {p0, p1}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->showPermissionsErrorHint(Ljava/util/List;)V

    return-void
.end method

.method private final addStarView(I)V
    .locals 3

    .line 845
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    check-cast p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->llMenu1:Lcom/dgiot/speedmonitoring/databinding/LiveControlMenu1Binding;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/LiveControlMenu1Binding;->steeringWheel:Lcom/dgiot/speedmonitoring/ui/view/SteeringWheelControl;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 847
    sget v0, Lcom/dgiot/speedmonitoring/R$drawable;->icon_direction_up:I

    sget v1, Lcom/dgiot/speedmonitoring/R$drawable;->icon_direction_up_fill:I

    const/4 v2, 0x0

    .line 846
    invoke-virtual {p1, v2, v0, v1}, Lcom/dgiot/speedmonitoring/ui/view/SteeringWheelControl;->setDirectionDrawables(III)V

    :cond_1
    if-eqz p1, :cond_2

    .line 849
    sget v0, Lcom/dgiot/speedmonitoring/R$drawable;->icon_direction_down:I

    sget v1, Lcom/dgiot/speedmonitoring/R$drawable;->icon_direction_down_fill:I

    const/4 v2, 0x1

    .line 848
    invoke-virtual {p1, v2, v0, v1}, Lcom/dgiot/speedmonitoring/ui/view/SteeringWheelControl;->setDirectionDrawables(III)V

    :cond_2
    if-eqz p1, :cond_3

    .line 851
    sget v0, Lcom/dgiot/speedmonitoring/R$drawable;->icon_direction_left:I

    sget v1, Lcom/dgiot/speedmonitoring/R$drawable;->icon_direction_left_fill:I

    const/4 v2, 0x2

    .line 850
    invoke-virtual {p1, v2, v0, v1}, Lcom/dgiot/speedmonitoring/ui/view/SteeringWheelControl;->setDirectionDrawables(III)V

    :cond_3
    if-eqz p1, :cond_4

    .line 853
    sget v0, Lcom/dgiot/speedmonitoring/R$drawable;->icon_direction_right:I

    sget v1, Lcom/dgiot/speedmonitoring/R$drawable;->icon_direction_right_fill:I

    const/4 v2, 0x3

    .line 852
    invoke-virtual {p1, v2, v0, v1}, Lcom/dgiot/speedmonitoring/ui/view/SteeringWheelControl;->setDirectionDrawables(III)V

    :cond_4
    return-void
.end method

.method private final cancelShotAnimator()V
    .locals 0

    return-void
.end method

.method private final changeDefinition(I)V
    .locals 0

    return-void
.end method

.method private final changeHeaderViewPortrait()V
    .locals 0

    return-void
.end method

.method private final changeSingleCurDefinitionView(I)V
    .locals 2

    .line 810
    iput p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->curDefinition:I

    .line 811
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->definitionIcon:[I

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 812
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->ilPlayControlBtn:Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlBtnBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlBtnBinding;->ibDefinition:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->definitionIcon:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 813
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->ivDefinitionLand:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->definitionLandIcon:[I

    aget p1, v1, p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    return-void
.end method

.method private final changgeTab(ILjava/lang/String;)V
    .locals 1

    .line 407
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->menuRecordControl:Lcom/dgiot/speedmonitoring/ui/view/RecordMenuView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/dgiot/speedmonitoring/ui/view/RecordMenuView;->setSelectState(I)V

    :cond_0
    const-string/jumbo v0, "updateRecordMenuPositionWhenClickMessageLog:change"

    .line 408
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 409
    invoke-virtual {p0, p1, p2}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->setAlarmJump(ILjava/lang/String;)V

    .line 410
    iget-object p2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p2, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p2, p2, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->vp2Menu3:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    invoke-virtual {p2, p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    return-void
.end method

.method private final checkIfUpdate(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const-string v1, "."

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p2

    .line 2409
    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "."

    const-string v2, ""

    move-object v0, p1

    .line 2410
    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 2411
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo v0, "valueOf(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    if-le p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final checkRender()V
    .locals 3

    .line 2313
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->getRenderState()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MyWebSocketClient renderState:reStartRender "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 2314
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->getRenderState()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2315
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->nowPlayerController:Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerController;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerController;->startRender()V

    .line 2316
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->glsBig:Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;

    const-string v1, "glsBig"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->refreshVideoSurface(Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;)V

    .line 2317
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall:Lcom/common/util/ui/MoveFrameLayout;

    invoke-virtual {v0}, Lcom/common/util/ui/MoveFrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2318
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->glsSmall:Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;

    const-string v1, "glsSmall"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->refreshVideoSurface(Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;)V

    .line 2320
    :cond_0
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall3:Lcom/common/util/ui/MoveFrameLayout;

    invoke-virtual {v0}, Lcom/common/util/ui/MoveFrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 2321
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->glsSmall3:Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;

    const-string v1, "glsSmall3"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->refreshVideoSurface(Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;)V

    :cond_1
    return-void
.end method

.method private final closeVideoStreamParam()V
    .locals 0

    return-void
.end method

.method private static final controlBottomMenuShow$lambda$9(Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clickShowRecordMenuView:showRecordMenuView2"

    .line 1113
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1114
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->menuRecordControl:Lcom/dgiot/speedmonitoring/ui/view/RecordMenuView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/dgiot/speedmonitoring/ui/view/RecordMenuView;->setSelectState(I)V

    .line 1115
    :cond_0
    invoke-virtual {p0, v1}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->showRecordMenuView(I)V

    return-void
.end method

.method private final controlVol(ZZ)V
    .locals 3

    .line 1201
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "MyWebSocketClient \u5bf9\u8bb2 controlVol: open = "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1202
    invoke-static {}, Lcom/dgiot/speedmonitoring/iot/DGIotClientManager;->getInstance()Lcom/dgiot/speedmonitoring/iot/DGIotClientManager;

    move-result-object p2

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->productSn:Ljava/lang/String;

    sget-object v1, Lcom/dgiot/speedmonitoring/repository/DGSocketRepository;->Companion:Lcom/dgiot/speedmonitoring/repository/DGSocketRepository$Companion;

    .line 1203
    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->productSn:Ljava/lang/String;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1202
    invoke-virtual {v1, v2, p1}, Lcom/dgiot/speedmonitoring/repository/DGSocketRepository$Companion;->getVideoVolPlayParam(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 1204
    new-instance v2, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity$controlVol$1;

    invoke-direct {v2}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity$controlVol$1;-><init>()V

    check-cast v2, Lcom/dgiot/speedmonitoring/iot/DGIotClientManager$CommandListener;

    .line 1202
    invoke-virtual {p2, v0, v1, v2}, Lcom/dgiot/speedmonitoring/iot/DGIotClientManager;->send(Ljava/lang/String;Ljava/lang/String;Lcom/dgiot/speedmonitoring/iot/DGIotClientManager$CommandListener;)I

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 1217
    :try_start_0
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->nowRtmpAddress:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, p2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1218
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->nowPlayerController:Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerController;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->uiHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 1219
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v2, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0, v0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity$$ExternalSyntheticLambda10;-><init>(Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    const-string v0, "MyWebSocketClient controlRecordingView false 1"

    .line 1222
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1223
    invoke-virtual {p0, p2}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->controlRecordingView(Z)V

    .line 1224
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->nowPlayerController:Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerController;

    if-eqz v0, :cond_1

    .line 1225
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerController;->stopRecord()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1229
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MyWebSocketClient controlRecordingView false ex = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1230
    invoke-virtual {p0, p2}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->controlRecordingView(Z)V

    :cond_1
    :goto_0
    if-nez p1, :cond_2

    .line 1234
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->getCloseRecordAddress()Ljava/lang/String;

    move-result-object p1

    .line 1235
    iget-object p2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->nowRtmpAddress:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "closeAddress:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "        "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1236
    sget-object p2, Lcom/dgiot/speedmonitoring/repository/DGApiPushRepository;->INSTANCE:Lcom/dgiot/speedmonitoring/repository/DGApiPushRepository;

    invoke-virtual {p2, p1}, Lcom/dgiot/speedmonitoring/repository/DGApiPushRepository;->requestCloseAudioStream(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private static final controlVol$lambda$10(Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;Ljava/lang/String;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$address"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1219
    iget-object p0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->nowPlayerController:Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerController;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p0, p1}, Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerController;->recordingSound(Ljava/lang/String;)V

    return-void
.end method

.method private final delayCloseVideo()V
    .locals 4

    .line 1625
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->uiHandler:Landroid/os/Handler;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->delayCloseVideoRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1627
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->productSn:Ljava/lang/String;

    invoke-static {v0}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getDeviceState(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->playType:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    sget-object v1, Lcom/dgiot/speedmonitoring/ui/live/PlayType;->LIVE_VIDEO:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->canUpdateLoadTime:Z

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "delayCloseVideo-getDeviceState:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1628
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->productSn:Ljava/lang/String;

    invoke-static {v0}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getDeviceState(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->playType:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    sget-object v1, Lcom/dgiot/speedmonitoring/ui/live/PlayType;->LIVE_VIDEO:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    if-ne v0, v1, :cond_1

    const-wide/16 v0, 0x7d0

    goto :goto_1

    :cond_1
    const-wide/16 v0, 0x61a8

    .line 1631
    :goto_1
    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->uiHandler:Landroid/os/Handler;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->delayCloseVideoRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static final delayHideLandControlRunAble$lambda$6(Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 687
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    if-eqz v0, :cond_0

    .line 688
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoLiveViewControl:Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->setShowPtzCanSlideVideo(Z)V

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/view/View;

    .line 690
    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v2, v2, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->rlTitleFloat:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    .line 691
    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v2, v2, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->rlLandBottomControlView:Landroid/widget/RelativeLayout;

    aput-object v2, v0, v1

    .line 692
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->llLandscapeRightControl:Landroid/widget/LinearLayout;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 693
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->ptzSmallView:Lcom/dgiot/speedmonitoring/ui/view/PTZSmallView;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 689
    invoke-static {v0}, Lcom/iot/demo/ipcview/util/ViewUtils;->setViewsGone([Landroid/view/View;)V

    .line 695
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->ivPtzLand:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 697
    :cond_0
    iget-object p0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->rightDefinitionSelectPopup:Lcom/dgiot/speedmonitoring/ui/pop/RightDefinitionSelectPopup;

    if-eqz p0, :cond_1

    .line 698
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/pop/RightDefinitionSelectPopup;->dismiss()V

    :cond_1
    return-void
.end method

.method private final getCloseRecordAddress()Ljava/lang/String;
    .locals 4

    .line 1245
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->nowRtmpAddress:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->extractIpFromRtmpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1246
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->productSn:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":7788/closepath?rtmpurl=rtmp://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":7768/video/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final getDGAudioController()Lcom/android/dgplayer/DGAudioController;
    .locals 1

    .line 1552
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->dgAudioController:Lcom/android/dgplayer/DGAudioController;

    if-nez v0, :cond_0

    .line 1553
    new-instance v0, Lcom/android/dgplayer/DGAudioController;

    invoke-direct {v0}, Lcom/android/dgplayer/DGAudioController;-><init>()V

    iput-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->dgAudioController:Lcom/android/dgplayer/DGAudioController;

    .line 1555
    :cond_0
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->dgAudioController:Lcom/android/dgplayer/DGAudioController;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method private final getDGRenderController()Lcom/android/dgplayer/DGRenderController;
    .locals 1

    .line 1544
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->dgRenderController:Lcom/android/dgplayer/DGRenderController;

    if-nez v0, :cond_0

    .line 1545
    new-instance v0, Lcom/android/dgplayer/DGRenderController;

    invoke-direct {v0}, Lcom/android/dgplayer/DGRenderController;-><init>()V

    iput-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->dgRenderController:Lcom/android/dgplayer/DGRenderController;

    .line 1547
    :cond_0
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->dgRenderController:Lcom/android/dgplayer/DGRenderController;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method private final getLivePlayerController()Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerController;
    .locals 3

    .line 1560
    new-instance v0, Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerControllerManager;

    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->getDGRenderController()Lcom/android/dgplayer/DGRenderController;

    move-result-object v1

    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->getDGAudioController()Lcom/android/dgplayer/DGAudioController;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerControllerManager;-><init>(Lcom/android/dgplayer/DGRenderController;Lcom/android/dgplayer/DGAudioController;)V

    check-cast v0, Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerController;

    iput-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->mLivePlayerController:Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerController;

    .line 1561
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method private final getNetSpeed()J
    .locals 7

    .line 1271
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v0

    .line 1273
    iget-wide v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->lastRxByte:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 1274
    iput-wide v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->lastRxByte:J

    return-wide v4

    :cond_0
    sub-long v2, v0, v2

    const/16 v4, 0x400

    int-to-long v4, v4

    .line 1277
    div-long/2addr v2, v4

    .line 1278
    iput-wide v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->lastRxByte:J

    return-wide v2
.end method

.method private final getRenderController()Lcom/android/dgplayer/DGRenderController;
    .locals 1

    .line 1535
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->dgRenderController:Lcom/android/dgplayer/DGRenderController;

    if-nez v0, :cond_0

    .line 1536
    new-instance v0, Lcom/android/dgplayer/DGRenderController;

    invoke-direct {v0}, Lcom/android/dgplayer/DGRenderController;-><init>()V

    iput-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->dgRenderController:Lcom/android/dgplayer/DGRenderController;

    .line 1538
    :cond_0
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->dgRenderController:Lcom/android/dgplayer/DGRenderController;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method private final getUpVideoUrlTime()J
    .locals 5

    const-string v0, "saveRequestVideoUrlTime:get="

    .line 2119
    :try_start_0
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->productSn:Ljava/lang/String;

    .line 2118
    invoke-static {v1}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getRequestVideoUrlTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2117
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 2123
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->productSn:Ljava/lang/String;

    invoke-static {v0}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getRequestVideoUrlTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getRequestVideoUrlTime(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/CharSequence;

    new-instance v1, Lkotlin/text/Regex;

    const-string v2, ","

    invoke-direct {v1, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object v0

    .line 3117
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_2

    .line 3118
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    .line 3119
    :cond_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3120
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2124
    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    move v4, v2

    :goto_0
    if-nez v4, :cond_0

    .line 3121
    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/util/ListIterator;->nextIndex()I

    move-result v1

    add-int/2addr v1, v3

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 3125
    :cond_2
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_1
    check-cast v0, Ljava/util/Collection;

    new-array v1, v2, [Ljava/lang/String;

    .line 3127
    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 2125
    check-cast v0, [Ljava/lang/String;

    .line 2126
    aget-object v1, v0, v3

    iput-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->oldAddress:Ljava/lang/String;

    .line 2127
    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "valueOf(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private final getYunPlayerController()Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerController;
    .locals 3

    .line 1565
    new-instance v0, Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerControllerFileManager;

    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->getDGRenderController()Lcom/android/dgplayer/DGRenderController;

    move-result-object v1

    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->getDGAudioController()Lcom/android/dgplayer/DGAudioController;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerControllerFileManager;-><init>(Lcom/android/dgplayer/DGRenderController;Lcom/android/dgplayer/DGAudioController;)V

    check-cast v0, Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerController;

    iput-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->mYunPlayerController:Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerController;

    .line 1566
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method private final goRecord_card(Ljava/lang/String;)V
    .locals 2

    .line 359
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoRecordFragment:Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->isInitView()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-eqz v1, :cond_1

    .line 360
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoRecordFragment:Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->setAlarmTime(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private final goRecord_yun1(Ljava/lang/String;)V
    .locals 4

    .line 365
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoRecordYun1Fragment:Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->isInitView()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setAlarmJumpgoRecord_yun2:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 366
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoRecordYun1Fragment:Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->isInitView()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    if-eqz v1, :cond_2

    .line 367
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoRecordYun1Fragment:Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->setAlarmTime(Ljava/lang/String;)V

    goto :goto_1

    .line 370
    :cond_2
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->uiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_3

    new-instance v1, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, p1}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity$$ExternalSyntheticLambda11;-><init>(Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;Ljava/lang/String;)V

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_1
    return-void
.end method

.method private static final goRecord_yun1$lambda$1(Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;Ljava/lang/String;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$msgTime"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 371
    iget-object p0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoRecordYun1Fragment:Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->playRecordVideoByAlarmTime(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private final goRecord_yun2(Ljava/lang/String;)V
    .locals 4

    .line 377
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoRecordYunFragment:Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->isInitView()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setAlarmJumpgoRecord_yun2:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 378
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoRecordYunFragment:Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->isInitView()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    if-eqz v1, :cond_2

    .line 379
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoRecordYunFragment:Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->setAlarmTime(Ljava/lang/String;)V

    goto :goto_1

    .line 382
    :cond_2
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->uiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_3

    new-instance v1, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity$$ExternalSyntheticLambda4;-><init>(Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;Ljava/lang/String;)V

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_1
    return-void
.end method

.method private static final goRecord_yun2$lambda$2(Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;Ljava/lang/String;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$msgTime"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 383
    iget-object p0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoRecordYunFragment:Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->playRecordVideoByAlarmTime(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private final handlePageBack()V
    .locals 4

    .line 2842
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 2843
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->playState:Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerControllerInterface$Status;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "VideoRecordingActivity playState="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    const-string v0, "VideoRecordingActivity onBackPressed"

    .line 2844
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 2845
    iget-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->refreshWindow:Z

    if-eqz v0, :cond_0

    .line 2846
    new-instance v0, Landroid/content/Intent;

    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    const-class v3, Lcom/dgiot/speedmonitoring/MainActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    const-string/jumbo v0, "updateVideoUrlTime:KEYCODE_BACK2"

    .line 2848
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 2849
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->updateVideoUrlTime()V

    .line 2850
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->playType:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->productSn:Ljava/lang/String;

    invoke-static {v2}, Lcom/dgiot/speedmonitoring/util/YunInfoUtil;->isYunOk(Ljava/lang/String;)Z

    move-result v2

    xor-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "returnLog:onBackPressed = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "     "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 2851
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->playType:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    sget-object v1, Lcom/dgiot/speedmonitoring/ui/live/PlayType;->RECORD_VIDEO:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    if-eq v0, v1, :cond_1

    .line 2852
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->playType:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    sget-object v1, Lcom/dgiot/speedmonitoring/ui/live/PlayType;->CLOUD_STORAGE_INTERNAL_VIDEO:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    if-eq v0, v1, :cond_1

    .line 2853
    iget-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isPlayRecord:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->productSn:Ljava/lang/String;

    invoke-static {v0}, Lcom/dgiot/speedmonitoring/util/YunInfoUtil;->isYunOk(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2855
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->showExitDialog()V

    goto :goto_0

    .line 2857
    :cond_2
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->finish()V

    goto :goto_0

    .line 2860
    :cond_3
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->cancelShotAnimator()V

    .line 2861
    invoke-virtual {p0, v1}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->setRequestedOrientation(I)V

    .line 2862
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->changeHeaderViewPortrait()V

    .line 2863
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/iot/demo/ipcview/util/ScreenUtils;->showSystemUI(Landroid/view/Window;)V

    :goto_0
    return-void
.end method

.method private final hideSmallVideo()V
    .locals 3

    .line 585
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizeState:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    new-array v0, v2, [Landroid/view/View;

    .line 586
    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v2, v2, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall:Lcom/common/util/ui/MoveFrameLayout;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/iot/demo/ipcview/util/ViewUtils;->setViewsGone([Landroid/view/View;)V

    goto :goto_0

    :cond_0
    new-array v0, v2, [Landroid/view/View;

    .line 588
    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v2, v2, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragBig:Lcom/common/util/ui/MoveFrameLayout;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/iot/demo/ipcview/util/ViewUtils;->setViewsGone([Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method private final hideSystemUI()V
    .locals 3

    .line 576
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isHandUp()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "hideSystemUI->"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 577
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isHandUp()Z

    move-result v0

    if-nez v0, :cond_0

    .line 578
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/iot/demo/ipcview/util/ScreenUtils;->hideSystemUI(Landroid/view/Window;)V

    :cond_0
    return-void
.end method

.method private static final hideSystemUIAction$lambda$0(Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->hideSystemUI()V

    return-void
.end method

.method private final initBluetoothDeviceReceiver()V
    .locals 1

    .line 550
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->bluetoothDeviceReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 551
    new-instance v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity$initBluetoothDeviceReceiver$1;

    invoke-direct {v0, p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity$initBluetoothDeviceReceiver$1;-><init>(Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;)V

    check-cast v0, Landroid/content/BroadcastReceiver;

    iput-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->bluetoothDeviceReceiver:Landroid/content/BroadcastReceiver;

    :cond_0
    return-void
.end method

.method private final initBluetoothListener()V
    .locals 4

    .line 465
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_CONNECT"

    .line 464
    invoke-static {v0, v1}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "BluetoothHeadsetLog checkSelfPermission fail"

    .line 469
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v1, "BluetoothHeadsetLog checkSelfPermission success"

    .line 472
    invoke-static {v1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 473
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_1

    if-eqz v1, :cond_1

    .line 475
    new-instance v2, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity$initBluetoothListener$1;

    invoke-direct {v2, p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity$initBluetoothListener$1;-><init>(Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;)V

    check-cast v2, Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    :cond_1
    return-void
.end method

.method private final initBundle(Landroid/content/Intent;)V
    .locals 9

    const-string v0, "isLoadUpDownViewLL->"

    const-string v1, "getDevicePermission::"

    const-string v2, "pageSource:"

    const-string v3, "reOpenInitBundle sn="

    .line 597
    iget-object v4, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->uiHandler:Landroid/os/Handler;

    if-nez v4, :cond_0

    .line 598
    new-instance v4, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->uiHandler:Landroid/os/Handler;

    .line 600
    :cond_0
    iget-object v4, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->ledCotrolHandler:Landroid/os/Handler;

    if-nez v4, :cond_1

    .line 601
    new-instance v4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->ledCotrolHandler:Landroid/os/Handler;

    :cond_1
    if-eqz p1, :cond_9

    :try_start_0
    const-string v4, "iotId"

    .line 605
    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->iotId:Ljava/lang/String;

    const-string v4, "productName"

    .line 606
    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->productName:Ljava/lang/String;

    const-string v4, "productSn"

    .line 607
    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->productSn:Ljava/lang/String;

    .line 608
    iget-object v4, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v4, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v4, v4, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->indicatorView:Lcom/dgiot/speedmonitoring/ui/view/IndicatorView;

    iget-object v5, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->productSn:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/dgiot/speedmonitoring/ui/view/IndicatorView;->setSelectDeviceSn(Ljava/lang/String;)V

    const-string v4, "key_page_source"

    const/4 v5, 0x1

    .line 609
    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->pageSource:I

    const-string v4, "msg_time"

    .line 610
    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->messageTime:Ljava/lang/String;

    const-string v4, "from_play_back"

    const/4 v6, 0x0

    .line 611
    invoke-virtual {p1, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isJumpFromPlayBack:Z

    if-eqz v4, :cond_2

    const-string v4, "play_back_type"

    .line 613
    invoke-virtual {p1, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->mPlayBackType:I

    .line 615
    :cond_2
    iget-object v4, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->productName:Ljava/lang/String;

    iget-object v7, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->productSn:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 616
    iget v3, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->pageSource:I

    if-ne v3, v5, :cond_3

    sget-object v3, Lcom/dgiot/speedmonitoring/ui/live/PlayType;->LIVE_VIDEO:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    goto :goto_0

    :cond_3
    sget-object v3, Lcom/dgiot/speedmonitoring/ui/live/PlayType;->RECORD_VIDEO:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    :goto_0
    iput-object v3, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->playType:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    .line 617
    iget v4, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->pageSource:I

    iget-object v7, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->messageTime:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "     "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " messageTime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 618
    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->messageTime:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 619
    iput-boolean v5, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isFirstOpenByMessage:Z

    .line 620
    sget-object v2, Lcom/dgiot/speedmonitoring/ui/live/PlayType;->CLOUD_STORAGE_VIDEO:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    iput-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->playType:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    .line 622
    iput-boolean v5, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->onlyMessageTimeLoad:Z

    .line 623
    iput-boolean v5, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->onlyMessageTimeInit:Z

    const-string v2, "onlyMessageTimeInit:set true"

    .line 624
    invoke-static {v2}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 626
    :cond_4
    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->productSn:Ljava/lang/String;

    invoke-static {v2}, Lcom/dgiot/speedmonitoring/util/DeviceInfoUtil;->isThreeVideo(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 627
    iput-boolean v5, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isThreeVideo:Z

    .line 629
    :cond_5
    iget-boolean v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isThreeVideo:Z

    if-nez v2, :cond_7

    .line 630
    invoke-static {}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getPictureInPictureStateAll()Z

    move-result v2

    if-nez v2, :cond_6

    move v2, v5

    goto :goto_1

    :cond_6
    move v2, v6

    :goto_1
    iput-boolean v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isLoadUpDownView:Z

    .line 631
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 632
    iget-boolean v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isLoadUpDownView:Z

    if-eqz v2, :cond_7

    .line 633
    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->productSn:Ljava/lang/String;

    invoke-static {v2}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getDeviceWindowNum(Ljava/lang/String;)I

    move-result v2

    .line 634
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    if-ne v2, v5, :cond_7

    .line 636
    iput-boolean v6, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isLoadUpDownView:Z

    :cond_7
    const-string v0, "deviceRole"

    .line 640
    invoke-virtual {p1, v0, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->deviceRole:I

    const-string v0, "productIcc_id"

    .line 641
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->deviceIccid:Ljava/lang/String;

    const-string v0, "product_window_refresh"

    .line 642
    invoke-virtual {p1, v0, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->refreshWindow:Z

    const-string v0, "devicePermission"

    .line 644
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->devicePermission:Ljava/lang/String;

    .line 645
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 649
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->productSn:Ljava/lang/String;

    invoke-static {p1}, Lcom/dgiot/speedmonitoring/util/YunInfoUtil;->isHasDefaultCard(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_2

    :cond_8
    move v5, v6

    :goto_2
    iput-boolean v5, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isHideInternal:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_9
    return-void
.end method

.method private final initControlView()V
    .locals 2

    .line 793
    sget v0, Lcom/dgiot/speedmonitoring/R$id;->iv_shot:I

    invoke-virtual {p0, v0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->shotIv:Landroid/widget/ImageView;

    .line 794
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v1, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity$$ExternalSyntheticLambda15;-><init>(Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 795
    sget v0, Lcom/dgiot/speedmonitoring/R$id;->progress_bar_video_buffering:I

    invoke-virtual {p0, v0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoBufferingProgressBar:Landroid/widget/ProgressBar;

    .line 796
    sget v0, Lcom/dgiot/speedmonitoring/R$id;->rl_video_panel:I

    invoke-virtual {p0, v0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoPanelRl:Landroid/widget/RelativeLayout;

    .line 797
    sget v0, Lcom/dgiot/speedmonitoring/R$id;->tv_player_mobile_network_tips:I

    invoke-virtual {p0, v0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->playerMobileNetworkTipsTv:Landroid/widget/TextView;

    return-void
.end method

.method private static final initControlView$lambda$7(Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 794
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->resetShotIvState()V

    return-void
.end method

.method private final initData()V
    .locals 0

    .line 1016
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->selectLedState()V

    .line 1017
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->selectBaseInfo()V

    return-void
.end method

.method private final initDelayRetryMillis()V
    .locals 2

    .line 1762
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->productSn:Ljava/lang/String;

    invoke-static {v0}, Lcom/dgiot/speedmonitoring/util/DeviceInfoUtil;->isLowPowerDevices(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0xbb8

    .line 1763
    iput-wide v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->delayRetryMillis:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x1388

    .line 1766
    iput-wide v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->delayRetryMillis:J

    :goto_0
    return-void
.end method

.method private final initHeader()V
    .locals 4

    .line 783
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->updateProductName()V

    .line 784
    iget v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->deviceRole:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "deviceRoless:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 785
    iget v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->deviceRole:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/view/View;

    .line 786
    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v2, v2, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->ivTitleSetting:Landroid/widget/ImageView;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/iot/demo/ipcview/util/ViewUtils;->setViewsInVisible([Landroid/view/View;)V

    new-array v1, v0, [Landroid/view/View;

    .line 787
    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v2, v2, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->ivTitleSetting2:Landroid/widget/ImageView;

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/iot/demo/ipcview/util/ViewUtils;->setViewsGone([Landroid/view/View;)V

    new-array v0, v0, [Landroid/view/View;

    .line 788
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->ivTitleSettingFloat:Landroid/widget/ImageView;

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/iot/demo/ipcview/util/ViewUtils;->setViewsGone([Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private final initOnBackPressedDispatcher()V
    .locals 0

    return-void
.end method

.method private final initOperateControl()V
    .locals 2

    .line 224
    new-instance v0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    check-cast v1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    invoke-direct {v0, p0, v1}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;-><init>(Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;)V

    iput-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoLiveViewControl:Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;

    .line 225
    new-instance v0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveClickControl;

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    check-cast v1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    invoke-direct {v0, p0, v1}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveClickControl;-><init>(Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;)V

    iput-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoLiveClickControl:Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveClickControl;

    return-void
.end method

.method private final initPlayControl()V
    .locals 4

    .line 1965
    iget-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isThreeVideo:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/view/View;

    .line 1966
    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v2, v2, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->btnChangePortrait:Landroid/widget/ImageButton;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    invoke-static {v0}, Lcom/iot/demo/ipcview/util/ViewUtils;->setViewsGone([Landroid/view/View;)V

    .line 1967
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->btnChangePortraitBottom:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 1969
    :cond_0
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->btnChangePortraitBottom:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1971
    :goto_0
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->btnChangePortrait:Landroid/widget/ImageButton;

    iget-boolean v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isLoadUpDownView:Z

    if-eqz v2, :cond_1

    sget v2, Lcom/dgiot/speedmonitoring/R$drawable;->icon_change_updown:I

    goto :goto_1

    :cond_1
    sget v2, Lcom/dgiot/speedmonitoring/R$drawable;->icon_change_portrait:I

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1974
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->ilPlayControlBtn:Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlBtnBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlBtnBinding;->tvRechargeDisc:Landroid/widget/TextView;

    .line 1975
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->productSn:Ljava/lang/String;

    invoke-static {v3}, Lcom/dgiot/speedmonitoring/util/DeviceInfoUtil;->isWifiDevice(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget v3, Lcom/dgiot/speedmonitoring/R$string;->device_item_hint_menu1_1:I

    goto :goto_2

    :cond_2
    sget v3, Lcom/dgiot/speedmonitoring/R$string;->device_item_hint_menu1:I

    :goto_2
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 1974
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1976
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->ilPlayControlBtn:Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlBtnBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlBtnBinding;->tvYunState:Landroid/widget/TextView;


    return-void
.end method

.method private final initRecordMenuPosition()V
    .locals 4

    .line 441
    iget-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isJumpFromPlayBack:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initRecordMenuPosition:isJumpFromPlayBack = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 442
    iget-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isJumpFromPlayBack:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 445
    invoke-virtual {p0, v0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->controlBottomMenuShow(I)V

    .line 446
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    check-cast v1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->indicatorView:Lcom/dgiot/speedmonitoring/ui/view/IndicatorView;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/dgiot/speedmonitoring/ui/view/IndicatorView;->setSelectState(I)V

    :cond_0
    const-string v0, "VideoLiveActivityLog:initYunView: initRecordMenuPosition"

    .line 447
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 448
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->initYunView()V

    .line 449
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->productSn:Ljava/lang/String;

    invoke-static {v0}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getDeviceState(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->messageTime:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 450
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->uiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity$$ExternalSyntheticLambda0;-><init>(Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 458
    :cond_1
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->menuRecordControl:Lcom/dgiot/speedmonitoring/ui/view/RecordMenuView;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isHideInternal:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dgiot/speedmonitoring/ui/view/RecordMenuView;->setInternalViewShow(Z)V

    :cond_2
    return-void
.end method

.method private static final initRecordMenuPosition$lambda$4(Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 451
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->messageTime:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setVideoCanOperate(12) "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 452
    iget-object p0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoLiveViewControl:Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->setVideoCanOperate(Z)V

    return-void
.end method

.method private final initTimeViewHeight()V
    .locals 5

    .line 230
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 231
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "phone_wh:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 232
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v1, 0x6a4

    if-ge v0, v1, :cond_0

    .line 233
    sget-object v0, Lcom/dgiot/speedmonitoring/ui/view/TimeScrollView$TimeView;->Companion:Lcom/dgiot/speedmonitoring/ui/view/TimeScrollView$TimeView$Companion;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Lcom/dgiot/speedmonitoring/ui/view/TimeScrollView$TimeView$Companion;->setViewHeightInt(I)V

    goto :goto_0

    .line 236
    :cond_0
    sget-object v0, Lcom/dgiot/speedmonitoring/ui/view/TimeScrollView$TimeView;->Companion:Lcom/dgiot/speedmonitoring/ui/view/TimeScrollView$TimeView$Companion;

    const/16 v1, 0xd2

    invoke-virtual {v0, v1}, Lcom/dgiot/speedmonitoring/ui/view/TimeScrollView$TimeView$Companion;->setViewHeightInt(I)V

    :goto_0
    return-void
.end method

.method private final initTips()V
    .locals 0

    return-void
.end method


.method private final initVideoRecordFragment()V
    .locals 3

    .line 2868
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->messageTime:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "fragmentNewInstance_onCreate:before fragmentNewInstance_onCreate = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 2869
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->productSn:Ljava/lang/String;

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->messageTime:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isJumpFromPlayBack:Z

    invoke-static {v0, v1, v2}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;Z)Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoRecordFragment:Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;

    const/4 v0, 0x1

    .line 2870
    invoke-virtual {p0, v0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->controlBottomMenuShow(I)V

    .line 2871
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoRecordFragment:Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;

    if-eqz v0, :cond_0

    .line 2872
    new-instance v1, Lcom/dgiot/speedmonitoring/ui/live/impl/VideoRecordViewOperateImpl;

    .line 2874
    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    .line 2872
    invoke-direct {v1, p0, v2}, Lcom/dgiot/speedmonitoring/ui/live/impl/VideoRecordViewOperateImpl;-><init>(Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;)V

    check-cast v1, Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoRecordViewOperateListener;

    .line 2871
    invoke-virtual {v0, v1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->setVideoRecordViewOperateListener(Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoRecordViewOperateListener;)V

    :cond_0
    return-void
.end method

.method private final initVideoRecordYun1Fragment()V
    .locals 4

    .line 2919
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->productSn:Ljava/lang/String;

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->messageTime:Ljava/lang/String;

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->needPlayYun1:Z

    invoke-static {v0, v1, v2, v3}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;

    move-result-object v0

    .line 2918
    iput-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoRecordYun1Fragment:Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;

    .line 2920
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->progressIndicator:Landroid/widget/ProgressBar;

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->setProgressView(Landroid/view/View;)V

    .line 2921
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoRecordYun1Fragment:Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 2922
    new-instance v1, Lcom/dgiot/speedmonitoring/ui/live/impl/VideoYunRecordViewOperateImpl;

    .line 2924
    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    .line 2922
    invoke-direct {v1, p0, v2}, Lcom/dgiot/speedmonitoring/ui/live/impl/VideoYunRecordViewOperateImpl;-><init>(Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;)V

    check-cast v1, Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;

    .line 2921
    invoke-virtual {v0, v1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->setVideoRecordViewOperateListener(Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;)V

    return-void
.end method

.method private final initVideoRecordYun2Fragment()V
    .locals 1

    const-string v0, "initVideoRecordYun2Fragment:start"

    .line 2931
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    return-void
.end method

.method private final initView()V
    .locals 4

    .line 658
    :try_start_0
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->initHeader()V

    .line 659
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->initControlView()V

    .line 660
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/iot/demo/ipcview/util/ScreenUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->screenWidthVerticalScreen:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x4022000000000000L    # 9.0

    mul-double/2addr v0, v2

    const/16 v2, 0x10

    int-to-double v2, v2

    div-double/2addr v0, v2

    double-to-int v0, v0

    .line 661
    iput v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoPanelHeight:I

    .line 662
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoLiveViewControl:Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoPanelHeight:I

    invoke-virtual {v0, v1}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->changeVideoPanelHeight(I)V

    .line 663
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    const/high16 v1, 0x43340000    # 180.0f

    invoke-static {v0, v1}, Lcom/iot/demo/ipcview/util/ScreenUtils;->convertDp2Px(Landroid/content/Context;F)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->addStarView(I)V

    .line 664
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->initTips()V

    .line 665
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->initBottomControl()V

    .line 666
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->initPlayControl()V

    .line 668
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoLiveViewControl:Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->initVideoView()V

    .line 669
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoLiveClickControl:Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveClickControl;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveClickControl;->initClickListener()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private final initWebRtc()V
    .locals 3

    const-string v0, "audio"

    .line 204
    invoke-virtual {p0, v0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.media.AudioManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/media/AudioManager;

    .line 205
    new-instance v1, Lcom/android/dgplayer/DGPlayerUtil;

    invoke-direct {v1}, Lcom/android/dgplayer/DGPlayerUtil;-><init>()V

    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/android/dgplayer/DGPlayerUtil;->initWebRtc(Landroid/content/Context;Landroid/media/AudioManager;)V

    return-void
.end method

.method public static final isHasRecordingPermission(Ljava/lang/String;)Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->Companion:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity$Companion;

    invoke-virtual {v0, p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity$Companion;->isHasRecordingPermission(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private final isHighRequestVideoUrl()Z
    .locals 4

    .line 2134
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->getUpVideoUrlTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 2135
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "saveRequestVideoUrlTime:get times ="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    const-wide/32 v2, 0x9c40

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static final ledDelayClose$lambda$18(Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2053
    invoke-direct {p0, v0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->requestLedSet(I)V

    return-void
.end method

.method private final loadVideo()V
    .locals 2

    :try_start_0
    const-string v0, "testTime go live----"

    .line 525
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    const-string v0, "VideoLiveActivityLog: onStart"

    .line 526
    invoke-static {v0}, Lcom/common/util/ALog;->w(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 527
    iput-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->mResumed:Z

    .line 528
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->mSocketMessageReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 529
    new-instance v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity$loadVideo$1;

    invoke-direct {v0, p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity$loadVideo$1;-><init>(Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;)V

    check-cast v0, Landroid/content/BroadcastReceiver;

    iput-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->mSocketMessageReceiver:Landroid/content/BroadcastReceiver;

    .line 540
    :cond_0
    sget-object v0, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/ReceiverHelper;->INSTANCE:Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/ReceiverHelper;

    invoke-virtual {v0}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/ReceiverHelper;->initAction()Landroid/content/IntentFilter;

    move-result-object v0

    .line 541
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->mSocketMessageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x0

    .line 542
    iput-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->openPage:Z

    .line 543
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoLiveViewControl:Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->setSleepViewShow(Z)V

    .line 544
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->startVideo()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private static final onConfigurationChanged$lambda$23(Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2831
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->resetShotIvState()V

    return-void
.end method

.method private static final onConfigurationChanged$lambda$24(Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2833
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->setImmersionBar()V

    return-void
.end method

.method private static final onResume$lambda$22(Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2649
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->menuRecordControl:Lcom/dgiot/speedmonitoring/ui/view/RecordMenuView;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->clickGoWebIndex:I

    invoke-virtual {v0, v1}, Lcom/dgiot/speedmonitoring/ui/view/RecordMenuView;->setSelectState(I)V

    .line 2650
    :cond_0
    iget v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->clickGoWebIndex:I

    invoke-virtual {p0, v0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->showRecordMenuView(I)V

    return-void
.end method

.method private final parseRtmpAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1837
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "addr"

    .line 1838
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1839
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->nowRtmpAddress:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method private final reLoadSleepLiveVideo()V
    .locals 2

    .line 2365
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->nowPlayerController:Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerController;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->nowRtmpAddress:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2366
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoLiveViewControl:Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->showLoadView()V

    .line 2367
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoLiveViewControl:Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->setSleepViewShow(Z)V

    const-string v0, "parseRtmpAddress==>.3"

    .line 2369
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 2370
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->glsBig:Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;

    invoke-virtual {v0}, Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;->surfaceCreated()V

    .line 2371
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->glsBig:Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;

    invoke-virtual {v0}, Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;->surfaceChanged()V

    .line 2372
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->glsBig:Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;->setCanLoadView(Z)V

    .line 2373
    iget-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->doubleVideo:Z

    if-eqz v0, :cond_0

    .line 2374
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->glsSmall:Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;

    invoke-virtual {v0}, Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;->surfaceCreated()V

    .line 2375
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->glsSmall:Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;

    invoke-virtual {v0}, Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;->surfaceChanged()V

    .line 2376
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->glsSmall:Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;

    invoke-virtual {v0, v1}, Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;->setCanLoadView(Z)V

    goto :goto_0

    .line 2378
    :cond_0
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->glsSmall:Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;->setVisibility(I)V

    .line 2379
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->flGlsSmall:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2380
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->cvGlsSmall:Landroidx/cardview/widget/CardView;

    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->setVisibility(I)V

    :goto_0
    const-string v0, "VideoLiveActivityLog:requestLiveVideoStreamParam:1"

    .line 2382
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 2383
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->requestLiveVideoStreamParam()V

    goto :goto_1

    .line 2385
    :cond_1
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoLiveViewControl:Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->setSleepViewShow(Z)V

    .line 2386
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->startVideo()V

    :goto_1
    return-void
.end method

.method private final reOpenRecordVideo()V
    .locals 1

    .line 1705
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->delayCloseVideo()V

    const-string v0, "reOpenRecordVideo_flag:3"

    .line 1706
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1707
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoRecordFragment:Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->reOpenRecordVideo()V

    return-void
.end method

.method private final refreshRecordMenuPosition()V
    .locals 6

    .line 2562
    iget v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->nowSelectTabIndex:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    .line 2563
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->vp2Menu3:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v0

    .line 2564
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "refreshRecordMenuPosition:recordMenuPosition = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 2565
    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->playType:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    sget-object v3, Lcom/dgiot/speedmonitoring/ui/live/PlayType;->LIVE_VIDEO:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    if-eq v2, v3, :cond_5

    .line 2568
    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->playType:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    sget-object v3, Lcom/dgiot/speedmonitoring/ui/live/PlayType;->RECORD_VIDEO:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    const/4 v4, 0x1

    if-ne v2, v3, :cond_1

    if-eqz v0, :cond_5

    .line 2570
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->menuRecordControl:Lcom/dgiot/speedmonitoring/ui/view/RecordMenuView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v4}, Lcom/dgiot/speedmonitoring/ui/view/RecordMenuView;->setSelectState(I)V

    .line 2571
    :cond_0
    invoke-virtual {p0, v4}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->showRecordMenuView(I)V

    goto :goto_0

    .line 2574
    :cond_1
    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->playType:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    sget-object v3, Lcom/dgiot/speedmonitoring/ui/live/PlayType;->CLOUD_STORAGE_INTERNAL_VIDEO:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    const/4 v5, 0x2

    if-ne v2, v3, :cond_3

    if-eq v0, v4, :cond_5

    const-string v0, "clickShowRecordMenuView:2"

    .line 2576
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 2577
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->menuRecordControl:Lcom/dgiot/speedmonitoring/ui/view/RecordMenuView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v5}, Lcom/dgiot/speedmonitoring/ui/view/RecordMenuView;->setSelectState(I)V

    .line 2578
    :cond_2
    invoke-virtual {p0, v5}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->showRecordMenuView(I)V

    goto :goto_0

    .line 2581
    :cond_3
    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->playType:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    sget-object v3, Lcom/dgiot/speedmonitoring/ui/live/PlayType;->CLOUD_STORAGE_VIDEO:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    if-ne v2, v3, :cond_5

    if-eq v0, v5, :cond_5

    .line 2583
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->menuRecordControl:Lcom/dgiot/speedmonitoring/ui/view/RecordMenuView;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v1}, Lcom/dgiot/speedmonitoring/ui/view/RecordMenuView;->setSelectState(I)V

    .line 2584
    :cond_4
    invoke-virtual {p0, v1}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->showRecordMenuView(I)V

    :cond_5
    :goto_0
    return-void
.end method

.method private final refreshSpeed()V
    .locals 4

    .line 1481
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->getNetSpeed()J

    move-result-wide v0

    const/4 v2, 0x2

    int-to-long v2, v2

    div-long/2addr v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " kb/s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1482
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "0"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1483
    new-instance v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity$$ExternalSyntheticLambda8;-><init>(Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;)V

    invoke-virtual {p0, v0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private static final refreshSpeed$lambda$11(Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1484
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->playState:Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerControllerInterface$Status;

    sget-object v1, Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerControllerInterface$Status;->OPEN:Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerControllerInterface$Status;

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->progressIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->progressIndicator2:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "refreshSpeed playState = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "          "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1485
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->playState:Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerControllerInterface$Status;

    sget-object v1, Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerControllerInterface$Status;->OPEN:Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerControllerInterface$Status;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->progressIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->llDeviceOffline:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 1486
    :cond_2
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->progressIndicator:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1487
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->progressIndicator2:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1488
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->progressIndicator3:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1489
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->llDeviceOffline:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1490
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->llDeviceOffline2:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1491
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->llDeviceOffline3:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1493
    :cond_3
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->startDeviceInfoService()V

    return-void
.end method

.method private final refreshVideoSurface(Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;)V
    .locals 4

    .line 2328
    :try_start_0
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->nowPlayerController:Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerController;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 2329
    invoke-virtual {p1}, Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    const-string v2, "getHolder(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2330
    iget v2, p1, Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;->position:I

    .line 2331
    iget v3, p1, Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;->key:I

    .line 2328
    invoke-interface {v0, v1, v2, v3}, Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerController;->surfaceCreatedOther(Landroid/view/SurfaceHolder;II)V

    .line 2333
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->nowPlayerController:Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerController;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 2334
    iget v1, p1, Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;->key:I

    .line 2335
    invoke-virtual {p1}, Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;->getWidth()I

    move-result v2

    .line 2336
    invoke-virtual {p1}, Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;->getHeight()I

    move-result p1

    .line 2333
    invoke-interface {v0, v1, v2, p1}, Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerController;->surfaceChange(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private final requestLedSet(I)V
    .locals 4

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2040
    :goto_0
    iput-boolean v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->ledValueState:Z

    .line 2041
    iput-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->userOperateLed:Z

    .line 2042
    invoke-static {}, Lcom/dgiot/speedmonitoring/iot/DGIotClientManager;->getInstance()Lcom/dgiot/speedmonitoring/iot/DGIotClientManager;

    move-result-object v0

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->productSn:Ljava/lang/String;

    sget-object v2, Lcom/dgiot/speedmonitoring/repository/DGSocketRepository;->Companion:Lcom/dgiot/speedmonitoring/repository/DGSocketRepository$Companion;

    .line 2043
    iget-object v3, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->productSn:Ljava/lang/String;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 2042
    invoke-virtual {v2, v3, p1}, Lcom/dgiot/speedmonitoring/repository/DGSocketRepository$Companion;->getLedSetParam(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 2044
    new-instance v2, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity$requestLedSet$1;

    invoke-direct {v2, p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity$requestLedSet$1;-><init>(Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;)V

    check-cast v2, Lcom/dgiot/speedmonitoring/iot/DGIotClientManager$CommandListener;

    .line 2042
    invoke-virtual {v0, v1, p1, v2}, Lcom/dgiot/speedmonitoring/iot/DGIotClientManager;->send(Ljava/lang/String;Ljava/lang/String;Lcom/dgiot/speedmonitoring/iot/DGIotClientManager$CommandListener;)I

    return-void
.end method

.method private final resetShotIvState()V
    .locals 2

    .line 804
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->shotIv:Landroid/widget/ImageView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setPivotX(F)V

    .line 805
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->shotIv:Landroid/widget/ImageView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->shotIv:Landroid/widget/ImageView;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setPivotY(F)V

    .line 806
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->shotIv:Landroid/widget/ImageView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->shotIv:Landroid/widget/ImageView;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    neg-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    return-void
.end method

.method private final selectBaseInfo()V
    .locals 0

    return-void
.end method

.method private final selectLedState()V
    .locals 4

    .line 1980
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->uiHandler:Landroid/os/Handler;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v1, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity$$ExternalSyntheticLambda12;-><init>(Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static final selectLedState$lambda$17(Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1982
    :try_start_0
    invoke-static {}, Lcom/dgiot/speedmonitoring/iot/DGIotClientManager;->getInstance()Lcom/dgiot/speedmonitoring/iot/DGIotClientManager;

    move-result-object v0

    .line 1983
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->productSn:Ljava/lang/String;

    sget-object v2, Lcom/dgiot/speedmonitoring/repository/DGSocketRepository;->Companion:Lcom/dgiot/speedmonitoring/repository/DGSocketRepository$Companion;

    .line 1984
    iget-object p0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->productSn:Ljava/lang/String;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v3, 0x3

    .line 1983
    invoke-virtual {v2, p0, v3}, Lcom/dgiot/speedmonitoring/repository/DGSocketRepository$Companion;->getLedSetParam(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 1982
    invoke-virtual {v0, v1, p0}, Lcom/dgiot/speedmonitoring/iot/DGIotClientManager;->send(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private static final sendPTZActionControl$lambda$8(Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 962
    iget v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->currentAction:I

    iget v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->NO_ACTION:I

    if-ne v0, v1, :cond_0

    return-void

    .line 965
    :cond_0
    invoke-virtual {p0, v0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->sendPTZActionControl(I)V

    .line 966
    iget-object p0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoLiveViewControl:Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->delayHideLandControlView()V

    return-void
.end method

.method private final setVoxSelect(Z)V
    .locals 4

    .line 1034
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->ilPlayControlBtn:Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlBtnBinding;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->ilPlayControlBtn:Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlBtnBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlBtnBinding;->ibMute:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    new-array v0, v2, [Landroid/view/View;

    .line 1035
    iget-object v3, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v3, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v3, v3, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->ilPlayControlBtn:Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlBtnBinding;

    iget-object v3, v3, Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlBtnBinding;->ibMute:Landroid/widget/ImageButton;

    aput-object v3, v0, v1

    invoke-static {p1, v0}, Lcom/iot/demo/ipcview/util/ViewUtils;->setViewsSelect(Z[Landroid/view/View;)V

    .line 1037
    :cond_0
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->ivSoundLand:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    new-array v0, v2, [Landroid/view/View;

    .line 1038
    iget-object v3, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v3, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v3, v3, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->ivSoundLand:Landroid/widget/ImageView;

    aput-object v3, v0, v1

    invoke-static {p1, v0}, Lcom/iot/demo/ipcview/util/ViewUtils;->setViewsSelect(Z[Landroid/view/View;)V

    .line 1040
    :cond_1
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->ilPlayControlBtnRecord:Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlRecordBinding;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->ilPlayControlBtnRecord:Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlRecordBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlRecordBinding;->ibMute:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    new-array v0, v2, [Landroid/view/View;

    .line 1041
    iget-object v3, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v3, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v3, v3, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->ilPlayControlBtnRecord:Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlRecordBinding;

    iget-object v3, v3, Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlRecordBinding;->ibMute:Landroid/widget/ImageButton;

    aput-object v3, v0, v1

    invoke-static {p1, v0}, Lcom/iot/demo/ipcview/util/ViewUtils;->setViewsSelect(Z[Landroid/view/View;)V

    .line 1043
    :cond_2
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->ilPlayControlBtnRecordYun:Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlRecordYunBinding;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->ilPlayControlBtnRecordYun:Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlRecordYunBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlRecordYunBinding;->ibMute:Landroid/widget/ImageButton;

    if-eqz v0, :cond_3

    new-array v0, v2, [Landroid/view/View;

    .line 1044
    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v2, v2, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->ilPlayControlBtnRecordYun:Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlRecordYunBinding;

    iget-object v2, v2, Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlRecordYunBinding;->ibMute:Landroid/widget/ImageButton;

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Lcom/iot/demo/ipcview/util/ViewUtils;->setViewsSelect(Z[Landroid/view/View;)V

    :cond_3
    return-void
.end method

.method private final showExitDialog()V
    .locals 5

    .line 3081
    new-instance v0, Lcom/dgiot/speedmonitoring/ui/pop/EditVideoAdHintPopup;

    .line 3082
    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    .line 3083
    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->productName:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u60a8\u7684\u8bbe\u5907\'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'\u5f53\u524d\u672a\u5f00\u901a\u4e91\u5b58\u50a8\u670d\u52a1\uff0c\u5f00\u901a\u540e\u53ef\u4eab\u53d7\u4e91\u5b58\u50a8\u7279\u6743"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3084
    new-instance v3, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity$showExitDialog$mHintPopup$1;

    invoke-direct {v3, p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity$showExitDialog$mHintPopup$1;-><init>(Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;)V

    check-cast v3, Lcom/dgiot/speedmonitoring/ui/pop/EditVideoAdHintPopup$CenterDialogClickListener;

    .line 3081
    invoke-direct {v0, v1, v2, v3}, Lcom/dgiot/speedmonitoring/ui/pop/EditVideoAdHintPopup;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/dgiot/speedmonitoring/ui/pop/EditVideoAdHintPopup$CenterDialogClickListener;)V

    .line 3101
    new-instance v2, Lcom/dgiot/speedmonitoring/util/XPopupUtil;

    invoke-direct {v2}, Lcom/dgiot/speedmonitoring/util/XPopupUtil;-><init>()V

    iget-object v3, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v3, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    invoke-virtual {v3}, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v3

    const-string v4, "getRoot(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/view/View;

    check-cast v0, Lcom/lxj/xpopup/core/BasePopupView;

    invoke-virtual {v2, v1, v3, v0}, Lcom/dgiot/speedmonitoring/util/XPopupUtil;->showCommonCenterPop(Landroid/content/Context;Landroid/view/View;Lcom/lxj/xpopup/core/BasePopupView;)Lcom/lxj/xpopup/core/BasePopupView;

    move-result-object v0

    iput-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->mAdHintRechargePops:Lcom/lxj/xpopup/core/BasePopupView;

    if-eqz v0, :cond_0

    .line 3102
    invoke-virtual {v0}, Lcom/lxj/xpopup/core/BasePopupView;->show()Lcom/lxj/xpopup/core/BasePopupView;

    :cond_0
    return-void
.end method

.method private final showHintDialog()V
    .locals 5

    .line 2496
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->updatePopup:Lcom/lxj/xpopup/core/BasePopupView;

    if-nez v0, :cond_0

    .line 2497
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/common/util/view/DisplayUtil;->getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 2498
    new-instance v2, Lcom/lxj/xpopup/XPopup$Builder;

    invoke-direct {v2, v0}, Lcom/lxj/xpopup/XPopup$Builder;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lxj/xpopup/XPopup$Builder;->hasShadowBg(Ljava/lang/Boolean;)Lcom/lxj/xpopup/XPopup$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/lxj/xpopup/XPopup$Builder;->dismissOnBackPressed(Ljava/lang/Boolean;)Lcom/lxj/xpopup/XPopup$Builder;

    move-result-object v2

    .line 2499
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lxj/xpopup/XPopup$Builder;->dismissOnTouchOutside(Ljava/lang/Boolean;)Lcom/lxj/xpopup/XPopup$Builder;

    move-result-object v2

    .line 2500
    iget-object v3, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v3, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    invoke-virtual {v3}, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v2, v3}, Lcom/lxj/xpopup/XPopup$Builder;->atView(Landroid/view/View;)Lcom/lxj/xpopup/XPopup$Builder;

    move-result-object v2

    .line 2501
    invoke-virtual {v2, v1}, Lcom/lxj/xpopup/XPopup$Builder;->popupWidth(I)Lcom/lxj/xpopup/XPopup$Builder;

    move-result-object v1

    .line 2503
    new-instance v2, Lcom/dgiot/speedmonitoring/ui/pop/UpdateVersionPopup;

    .line 2505
    new-instance v3, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity$showHintDialog$1;

    invoke-direct {v3, p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity$showHintDialog$1;-><init>(Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;)V

    check-cast v3, Lcom/dgiot/speedmonitoring/ui/pop/UpdateVersionPopup$PrivacyStatementDialogListener;

    .line 2503
    invoke-direct {v2, v0, v3}, Lcom/dgiot/speedmonitoring/ui/pop/UpdateVersionPopup;-><init>(Landroid/content/Context;Lcom/dgiot/speedmonitoring/ui/pop/UpdateVersionPopup$PrivacyStatementDialogListener;)V

    check-cast v2, Lcom/lxj/xpopup/core/BasePopupView;

    .line 2502
    invoke-virtual {v1, v2}, Lcom/lxj/xpopup/XPopup$Builder;->asCustom(Lcom/lxj/xpopup/core/BasePopupView;)Lcom/lxj/xpopup/core/BasePopupView;

    move-result-object v0

    .line 2498
    iput-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->updatePopup:Lcom/lxj/xpopup/core/BasePopupView;

    .line 2529
    :cond_0
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->updatePopup:Lcom/lxj/xpopup/core/BasePopupView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/lxj/xpopup/core/BasePopupView;->show()Lcom/lxj/xpopup/core/BasePopupView;

    return-void
.end method

.method private final showPermissionsErrorHint(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1162
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->base:Lcom/dgiot/speedmonitoring/base/Base;

    if-eqz v0, :cond_0

    .line 1163
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->base:Lcom/dgiot/speedmonitoring/base/Base;

    .line 1164
    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    .line 1165
    new-instance v2, Lcom/dgiot/speedmonitoring/ui/pop/CommonCenterPopup;

    .line 1166
    sget v3, Lcom/dgiot/speedmonitoring/R$string;->hint_agreement_title:I

    invoke-virtual {p0, v3}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1167
    sget v4, Lcom/dgiot/speedmonitoring/R$string;->device_video_permission_hint:I

    invoke-virtual {p0, v4}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1168
    new-instance v5, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity$showPermissionsErrorHint$1;

    invoke-direct {v5, p0, p1}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity$showPermissionsErrorHint$1;-><init>(Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;Ljava/util/List;)V

    check-cast v5, Lcom/dgiot/speedmonitoring/ui/pop/CommonCenterPopup$CenterDialogClickListener;

    .line 1165
    invoke-direct {v2, v1, v3, v4, v5}, Lcom/dgiot/speedmonitoring/ui/pop/CommonCenterPopup;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/dgiot/speedmonitoring/ui/pop/CommonCenterPopup$CenterDialogClickListener;)V

    .line 1192
    sget p1, Lcom/dgiot/speedmonitoring/R$string;->device_video_permission_set:I

    invoke-virtual {p0, p1}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v3, "#65A2FF"

    .line 1193
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    .line 1191
    invoke-virtual {v2, p1, v3}, Lcom/dgiot/speedmonitoring/ui/pop/CommonCenterPopup;->setRightClickViewText(Ljava/lang/String;I)Lcom/dgiot/speedmonitoring/ui/pop/CommonCenterPopup;

    move-result-object p1

    .line 1195
    sget v2, Lcom/dgiot/speedmonitoring/R$string;->deviceManager_unbind_no:I

    invoke-virtual {p0, v2}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/dgiot/speedmonitoring/ui/pop/CommonCenterPopup;->showLeftClickView(Ljava/lang/String;)Lcom/dgiot/speedmonitoring/ui/pop/CommonCenterPopup;

    move-result-object p1

    const-string v2, "showLeftClickView(...)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1163
    invoke-virtual {v0, v1, p1}, Lcom/dgiot/speedmonitoring/base/Base;->showCommonCenterPop(Landroid/content/Context;Lcom/dgiot/speedmonitoring/ui/pop/CommonCenterPopup;)V

    :cond_0
    return-void
.end method

.method private final showRechargeDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 2186
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->upShowTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    return-void

    .line 2189
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->upShowTime:J

    .line 2190
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "showRechargeDialog:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 2191
    new-instance v0, Lcom/dgiot/speedmonitoring/ui/pop/HintRechargePopup;

    .line 2192
    move-object v7, p0

    check-cast v7, Landroid/content/Context;

    .line 2196
    new-instance v1, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity$showRechargeDialog$hintRechargePopup$1;

    invoke-direct {v1, p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity$showRechargeDialog$hintRechargePopup$1;-><init>(Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;)V

    move-object v6, v1

    check-cast v6, Lcom/dgiot/speedmonitoring/ui/pop/HintRechargePopup$CenterDialogClickListener;

    move-object v1, v0

    move-object v2, v7

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    .line 2191
    invoke-direct/range {v1 .. v6}, Lcom/dgiot/speedmonitoring/ui/pop/HintRechargePopup;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dgiot/speedmonitoring/ui/pop/HintRechargePopup$CenterDialogClickListener;)V

    .line 2215
    new-instance p1, Lcom/dgiot/speedmonitoring/util/XPopupUtil;

    invoke-direct {p1}, Lcom/dgiot/speedmonitoring/util/XPopupUtil;-><init>()V

    .line 2217
    iget-object p2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p2, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    invoke-virtual {p2}, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p2

    const-string p3, "getRoot(...)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/view/View;

    .line 2218
    check-cast v0, Lcom/lxj/xpopup/core/BasePopupView;

    .line 2215
    invoke-virtual {p1, v7, p2, v0}, Lcom/dgiot/speedmonitoring/util/XPopupUtil;->showCommonCenterPop(Landroid/content/Context;Landroid/view/View;Lcom/lxj/xpopup/core/BasePopupView;)Lcom/lxj/xpopup/core/BasePopupView;

    move-result-object p1

    iput-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->centerPopup:Lcom/lxj/xpopup/core/BasePopupView;

    .line 2220
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/lxj/xpopup/core/BasePopupView;->show()Lcom/lxj/xpopup/core/BasePopupView;

    return-void
.end method

.method private final showYunRechargeHintDialog()V
    .locals 0

    return-void
.end method


.method private final startOpenVideo(Ljava/lang/String;)V
    .locals 5

    const-string v0, "setLowPowerReLoadNumFlag = startOpenVideo"

    .line 2251
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 2253
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->nowPlayerController:Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerController;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2254
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->uiHandler:Landroid/os/Handler;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->delaySleepRunnable:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity$DelaySleepRunnable;

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2255
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->uiHandler:Landroid/os/Handler;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->delaySleepRunnable:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity$DelaySleepRunnable;

    check-cast v1, Ljava/lang/Runnable;

    const-wide/32 v2, 0x50910

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2256
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MyWebSocketClient video url>"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->e(Ljava/lang/String;)V

    const-string v0, "time startVideo startOpenVideo open"

    .line 2258
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 2260
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->nowPlayerController:Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->uiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    const-string v0, "showProgressIndicator_flag:1"

    .line 2261
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 2262
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoLiveViewControl:Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->showProgressIndicator()V

    .line 2263
    iget-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isRefreshVideoRePlay:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2264
    iput-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isRefreshVideoRePlay:Z

    .line 2265
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->nowPlayerController:Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerController;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, p1}, Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerController;->switchURL(Ljava/lang/String;)I

    move-result v0

    .line 2266
    iget-boolean v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->refreshWindow:Z

    iget-boolean v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isRefreshVideoRePlay:Z

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "MyWebSocketClient open video url>"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, "            "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "//"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/common/util/ALog;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 2277
    :cond_0
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->nowPlayerController:Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerController;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, p1}, Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerController;->open(Ljava/lang/String;)Z

    .line 2279
    :goto_0
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->nowPlayerController:Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerController;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    invoke-interface {p1, v0, v1}, Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerController;->playBack(D)V

    :cond_1
    return-void
.end method

.method private final startRecord()V
    .locals 2

    const/4 v0, 0x1

    .line 1132
    iput-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isIsRunningOpenRecordPerm:Z

    .line 1133
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/hjq/permissions/XXPermissions;->with(Landroid/content/Context;)Lcom/hjq/permissions/XXPermissions;

    move-result-object v0

    const-string v1, "android.permission.RECORD_AUDIO"

    .line 1134
    invoke-virtual {v0, v1}, Lcom/hjq/permissions/XXPermissions;->permission(Ljava/lang/String;)Lcom/hjq/permissions/XXPermissions;

    move-result-object v0

    .line 1138
    new-instance v1, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity$startRecord$1;

    invoke-direct {v1, p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity$startRecord$1;-><init>(Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;)V

    check-cast v1, Lcom/hjq/permissions/OnPermissionCallback;

    invoke-virtual {v0, v1}, Lcom/hjq/permissions/XXPermissions;->request(Lcom/hjq/permissions/OnPermissionCallback;)V

    return-void
.end method

.method private final startTimer()V
    .locals 4

    .line 1526
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->upStartTimer:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 1527
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->upStartTimer:J

    const-string v0, "speedTimer:start"

    .line 1528
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1529
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->uiHandler:Landroid/os/Handler;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->speedTimer:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private static final startVideo$lambda$13(Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1651
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->nowPlayerController:Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerController;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->glsSmall:Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;

    iget v1, v1, Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;->key:I

    const/4 v2, 0x5

    invoke-interface {v0, v2, v1}, Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerController;->updateVideoPosition(II)V

    .line 1652
    iget-object p0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p0, p0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->glsSmall:Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;

    invoke-virtual {p0, v2}, Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;->setPosition(I)V

    return-void
.end method

.method private static final startVideo$lambda$14(Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1657
    iget-object p0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoLiveViewControl:Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->showLoadView()V

    return-void
.end method

.method private static final startVideo$lambda$15(Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1679
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->playType:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    sget-object v1, Lcom/dgiot/speedmonitoring/ui/live/PlayType;->CLOUD_STORAGE_INTERNAL_VIDEO:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "reOpenRecordVideo_flag:1"

    .line 1680
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1681
    iget-object p0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoRecordYun1Fragment:Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v2}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->reOpenRecordVideo(Z)V

    goto :goto_0

    .line 1682
    :cond_0
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->playType:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    sget-object v1, Lcom/dgiot/speedmonitoring/ui/live/PlayType;->CLOUD_STORAGE_VIDEO:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    if-ne v0, v1, :cond_2

    const-string v0, "reOpenRecordVideo_flag:2"

    .line 1683
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1684
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->productSn:Ljava/lang/String;

    invoke-static {v0}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getDeviceState(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->firstOpen:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 1685
    iput-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->firstOpen:Z

    goto :goto_0

    .line 1688
    :cond_1
    iget-object p0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoRecordYunFragment:Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v2}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->reOpenRecordVideo(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method private final stopTimer()V
    .locals 2

    const-string v0, "speedTimer:stop"

    .line 1520
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1521
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->uiHandler:Landroid/os/Handler;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->speedTimer:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final stopVideo()V
    .locals 4

    const-string v0, "MyWebSocketClient close video stopVideo "

    .line 2730
    :try_start_0
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->ilPlayControlBtn:Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlBtnBinding;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlBtnBinding;->ibSpeaker:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->isSelected()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 2732
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->nowPlayerController:Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerController;

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->uiHandler:Landroid/os/Handler;

    if-eqz v3, :cond_0

    .line 2733
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1}, Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerController;->stopRecord()V

    :cond_0
    const/4 v1, 0x1

    .line 2735
    invoke-direct {p0, v2, v1}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->controlVol(ZZ)V

    .line 2737
    :cond_1
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->closeVideoStreamParam()V

    .line 2738
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->nowPlayerController:Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerController;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->uiHandler:Landroid/os/Handler;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->llDeviceSleep:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "dgp---------------------------------close 4"

    .line 2739
    invoke-static {v1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 2740
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->nowPlayerController:Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerController;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->e(Ljava/lang/String;)V

    .line 2741
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->nowPlayerController:Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerController;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerController;->close(I)V

    const-string v0, "MyWebSocketClient close video stopVideo"

    .line 2742
    invoke-static {v0}, Lcom/common/util/ALog;->e(Ljava/lang/String;)V

    .line 2743
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->closePlayView()V

    .line 2745
    :cond_2
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->glsBig:Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;

    invoke-virtual {v0, v2}, Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;->setCanLoadView(Z)V

    .line 2746
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->glsSmall:Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;

    invoke-virtual {v0, v2}, Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;->setCanLoadView(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    .line 2749
    iput-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->playState:Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerControllerInterface$Status;

    return-void
.end method

.method private final updateProductName()V
    .locals 2

    .line 777
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->tvProductName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->productName:Ljava/lang/String;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 778
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->tvProductName2:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->productName:Ljava/lang/String;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 779
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->tvProductNameLandscape:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->productName:Ljava/lang/String;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static final updateRecordMenuPositionWhenClickMessage$lambda$3(Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;ILjava/lang/String;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$msgTime"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 400
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoRecordYunFragment:Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->isInitView()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setAlarmJumpgoRecord_yun2..:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 401
    invoke-direct {p0, p1, p2}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->changgeTab(ILjava/lang/String;)V

    return-void
.end method

.method private static final videoRecordYunStartPlay$lambda$25(Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;Ljava/util/List;)V
    .locals 5

    const-string v0, "playProgress_playProgress_playBack3:"

    const-string v1, "this$0"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$dgFileItems"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2961
    :try_start_0
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->nowPlayerController:Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerController;

    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-interface {v1, v2}, Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerController;->open(Ljava/lang/String;)Z

    .line 2962
    :cond_0
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->nowPlayerController:Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerController;

    if-eqz v1, :cond_1

    invoke-interface {v1, p1}, Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerController;->addVideoFiles(Ljava/util/List;)V

    :cond_1
    const/4 v1, 0x0

    .line 2963
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/dgplayer/DGFileItem;

    iget-object v2, v2, Lcom/android/dgplayer/DGFileItem;->time:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-double v2, v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 2964
    iget-object p0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->nowPlayerController:Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerController;

    if-eqz p0, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/dgplayer/DGFileItem;

    iget-object p1, p1, Lcom/android/dgplayer/DGFileItem;->time:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-double v0, p1

    invoke-interface {p0, v0, v1}, Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerController;->playBack(D)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method


# virtual methods
.method public final changeToLandscapeView()V
    .locals 1

    const-string v0, "changeToLandscapeView:start"

    .line 1875
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1879
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->cancelShotAnimator()V

    const/4 v0, 0x0

    .line 1880
    invoke-virtual {p0, v0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->setRequestedOrientation(I)V

    return-void
.end method

.method public final checkIfHeadset(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3

    const-string v0, "device"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 494
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_CONNECT"

    .line 493
    invoke-static {v0, v1}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 500
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 503
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v1

    const/16 v2, 0x404

    if-eq v1, v2, :cond_1

    const/16 v2, 0x418

    if-eq v1, v2, :cond_1

    .line 510
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BluetoothHeadsetLog Connected to non-headset Bluetooth device: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 507
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BluetoothHeadsetLog Connected to Bluetooth Headset: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 508
    invoke-static {v0}, Lcom/dgiot/speedmonitoring/util/AudioManagers;->getInstance(Landroid/content/Context;)Lcom/dgiot/speedmonitoring/util/AudioManagers;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/dgiot/speedmonitoring/util/AudioManagers;->switchToSpeaker(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final closePlayView()V
    .locals 4

    .line 1463
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->upCloseTime:J

    sub-long/2addr v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "updatePlayerStatus:status====>"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1465
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->upCloseTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 1466
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->upCloseTime:J

    .line 1467
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->changeStreamUrl:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MyWebSocketClient video CLOSE_SUCCESS ->"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1468
    iget-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->changeStream:Z

    if-eqz v0, :cond_0

    .line 1469
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "parseRtmpAddress==> changeStream="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1471
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->changeStreamUrl:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "changeLog changeStream:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1472
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->changeStreamUrl:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->startOpenVideo(Ljava/lang/String;)V

    .line 1474
    :cond_0
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->uiHandler:Landroid/os/Handler;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->delayCloseVideoRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public final controlBottomMenuShow(I)V
    .locals 8

    .line 1096
    iput p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->nowSelectTabIndex:I

    .line 1097
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "controlBottomMenuShow:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    const/4 v0, 0x3

    new-array v1, v0, [Landroid/view/View;

    .line 1098
    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v2, v2, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->llMenu1:Lcom/dgiot/speedmonitoring/databinding/LiveControlMenu1Binding;

    iget-object v2, v2, Lcom/dgiot/speedmonitoring/databinding/LiveControlMenu1Binding;->root:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v2, v2, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->llMenu2:Landroid/widget/LinearLayout;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v2, v2, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->llMenu3:Landroid/widget/RelativeLayout;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    invoke-static {v1}, Lcom/iot/demo/ipcview/util/ViewUtils;->setViewsGone([Landroid/view/View;)V

    if-eq p1, v4, :cond_2

    if-eq p1, v5, :cond_1

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    .line 1106
    :cond_0
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->llMenu3:Landroid/widget/RelativeLayout;

    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Lcom/iot/demo/ipcview/util/ViewUtils;->setViewVisible(Landroid/view/View;)V

    .line 1107
    iget-boolean v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->initMenuSelectDefaultIndex:Z

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "clickShowRecordMenuView:initMenuSelectDefaultIndex="

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1108
    iget-boolean v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->initMenuSelectDefaultIndex:Z

    if-nez v1, :cond_3

    .line 1109
    iput-boolean v4, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->initMenuSelectDefaultIndex:Z

    .line 1110
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->productSn:Ljava/lang/String;

    invoke-static {v1}, Lcom/dgiot/speedmonitoring/util/YunInfoUtil;->isYunOk(Ljava/lang/String;)Z

    move-result v1

    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->productSn:Ljava/lang/String;

    invoke-static {v2}, Lcom/dgiot/speedmonitoring/util/YunInfoUtil;->isHasDefaultCard(Ljava/lang/String;)Z

    move-result v2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1111
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->productSn:Ljava/lang/String;

    invoke-static {v1}, Lcom/dgiot/speedmonitoring/util/YunInfoUtil;->isYunOk(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->productSn:Ljava/lang/String;

    invoke-static {v1}, Lcom/dgiot/speedmonitoring/util/YunInfoUtil;->isHasDefaultCard(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1112
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->uiHandler:Landroid/os/Handler;

    if-eqz v1, :cond_3

    new-instance v2, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity$$ExternalSyntheticLambda14;

    invoke-direct {v2, p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity$$ExternalSyntheticLambda14;-><init>(Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;)V

    const-wide/16 v6, 0x1f4

    invoke-virtual {v1, v2, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1103
    :cond_1
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->llMenu2:Landroid/widget/LinearLayout;

    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Lcom/iot/demo/ipcview/util/ViewUtils;->setViewVisible(Landroid/view/View;)V

    goto :goto_0

    .line 1100
    :cond_2
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->llMenu1:Lcom/dgiot/speedmonitoring/databinding/LiveControlMenu1Binding;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/databinding/LiveControlMenu1Binding;->root:Landroid/widget/LinearLayout;

    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Lcom/iot/demo/ipcview/util/ViewUtils;->setViewVisible(Landroid/view/View;)V

    .line 1120
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->llMenu1:Lcom/dgiot/speedmonitoring/databinding/LiveControlMenu1Binding;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/databinding/LiveControlMenu1Binding;->root:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    if-ne p1, v4, :cond_4

    move v4, v3

    goto :goto_1

    :cond_4
    move v4, v2

    :goto_1
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1122
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->llMenu2:Landroid/widget/LinearLayout;

    if-ne p1, v5, :cond_5

    move v2, v3

    :cond_5
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1124
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->menuRecordControl:Lcom/dgiot/speedmonitoring/ui/view/RecordMenuView;

    if-ne p1, v0, :cond_6

    goto :goto_2

    :cond_6
    const/4 v3, 0x4

    :goto_2
    invoke-virtual {v1, v3}, Lcom/dgiot/speedmonitoring/ui/view/RecordMenuView;->setVisibility(I)V

    return-void
.end method

.method public final controlRecordingView(Z)V
    .locals 7

    const-string v0, "MyWebSocketClient \u5bf9\u8bb2 controlRecordingView: isshow = "

    .line 1848
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    .line 1850
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->cvRecordLoading:Landroidx/cardview/widget/CardView;

    invoke-virtual {p1, v4}, Landroidx/cardview/widget/CardView;->setVisibility(I)V

    .line 1851
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoLiveViewControl:Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-array v2, v2, [Landroid/view/View;

    .line 1852
    iget-object v5, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v5, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v5, v5, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->ilPlayControlBtn:Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlBtnBinding;

    iget-object v5, v5, Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlBtnBinding;->ibRecharge:Landroid/widget/ImageButton;

    aput-object v5, v2, v4

    iget-object v4, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v4, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v4, v4, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->ilPlayControlBtn:Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlBtnBinding;

    iget-object v4, v4, Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlBtnBinding;->ibMute:Landroid/widget/ImageButton;

    aput-object v4, v2, v3

    .line 1853
    iget-object v4, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v4, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v4, v4, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->ilPlayControlBtn:Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlBtnBinding;

    iget-object v4, v4, Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlBtnBinding;->ibVox:Landroid/widget/ImageButton;

    aput-object v4, v2, v1

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->ilPlayControlBtn:Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlBtnBinding;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlBtnBinding;->ibDefinition:Landroid/widget/ImageButton;

    aput-object v1, v2, v0

    .line 1851
    invoke-virtual {p1, v2}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->setViewDisable([Landroid/view/View;)V

    .line 1856
    iput-boolean v3, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->startSpeaker:Z

    .line 1857
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->ilPlayControlBtn:Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlBtnBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlBtnBinding;->ibSpeaker:Landroid/widget/ImageButton;

    invoke-virtual {p1, v3}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 1858
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->ilPlayControlBtn:Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlBtnBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlBtnBinding;->ibSpeaker:Landroid/widget/ImageButton;

    sget v0, Lcom/dgiot/speedmonitoring/R$drawable;->icon_video_recording2:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 1860
    :cond_0
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoLiveViewControl:Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-array v5, v2, [Landroid/view/View;

    .line 1861
    iget-object v6, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v6, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v6, v6, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->ilPlayControlBtn:Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlBtnBinding;

    iget-object v6, v6, Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlBtnBinding;->ibRecharge:Landroid/widget/ImageButton;

    aput-object v6, v5, v4

    iget-object v6, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v6, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v6, v6, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->ilPlayControlBtn:Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlBtnBinding;

    iget-object v6, v6, Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlBtnBinding;->ibMute:Landroid/widget/ImageButton;

    aput-object v6, v5, v3

    .line 1862
    iget-object v3, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v3, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v3, v3, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->ilPlayControlBtn:Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlBtnBinding;

    iget-object v3, v3, Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlBtnBinding;->ibVox:Landroid/widget/ImageButton;

    aput-object v3, v5, v1

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->ilPlayControlBtn:Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlBtnBinding;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlBtnBinding;->ibDefinition:Landroid/widget/ImageButton;

    aput-object v1, v5, v0

    .line 1860
    invoke-virtual {p1, v5}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->setViewEnable([Landroid/view/View;)V

    .line 1864
    iput-boolean v4, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->startSpeaker:Z

    .line 1865
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->ilPlayControlBtn:Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlBtnBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlBtnBinding;->ibSpeaker:Landroid/widget/ImageButton;

    invoke-virtual {p1, v4}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 1867
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->cvRecordLoading:Landroidx/cardview/widget/CardView;

    invoke-virtual {p1, v2}, Landroidx/cardview/widget/CardView;->setVisibility(I)V

    .line 1868
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->ilPlayControlBtn:Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlBtnBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlBtnBinding;->ibSpeaker:Landroid/widget/ImageButton;

    sget v0, Lcom/dgiot/speedmonitoring/R$drawable;->icon_video_voice_select:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public final convertFileControllerStatus(Lcom/dgiot/speedmonitoring/ui/live/controller/PlayFileControllerInterface$Status;)V
    .locals 1

    const-string v0, "status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1341
    sget-object v0, Lcom/dgiot/speedmonitoring/ui/live/controller/PlayFileControllerInterface$Status;->OPEN:Lcom/dgiot/speedmonitoring/ui/live/controller/PlayFileControllerInterface$Status;

    if-ne p1, v0, :cond_0

    .line 1342
    sget-object p1, Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerControllerInterface$Status;->OPEN:Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerControllerInterface$Status;

    iput-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->playState:Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerControllerInterface$Status;

    goto :goto_0

    .line 1343
    :cond_0
    sget-object v0, Lcom/dgiot/speedmonitoring/ui/live/controller/PlayFileControllerInterface$Status;->OPEN_FAIL:Lcom/dgiot/speedmonitoring/ui/live/controller/PlayFileControllerInterface$Status;

    if-ne p1, v0, :cond_1

    .line 1344
    sget-object p1, Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerControllerInterface$Status;->OPEN_FAIL:Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerControllerInterface$Status;

    iput-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->playState:Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerControllerInterface$Status;

    goto :goto_0

    .line 1345
    :cond_1
    sget-object v0, Lcom/dgiot/speedmonitoring/ui/live/controller/PlayFileControllerInterface$Status;->CLOSE_SUCCESS:Lcom/dgiot/speedmonitoring/ui/live/controller/PlayFileControllerInterface$Status;

    if-ne p1, v0, :cond_2

    .line 1346
    sget-object p1, Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerControllerInterface$Status;->CLOSE_SUCCESS:Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerControllerInterface$Status;

    iput-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->playState:Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerControllerInterface$Status;

    goto :goto_0

    .line 1347
    :cond_2
    sget-object v0, Lcom/dgiot/speedmonitoring/ui/live/controller/PlayFileControllerInterface$Status;->READ_FAIL:Lcom/dgiot/speedmonitoring/ui/live/controller/PlayFileControllerInterface$Status;

    if-ne p1, v0, :cond_3

    .line 1348
    sget-object p1, Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerControllerInterface$Status;->READ_FAIL:Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerControllerInterface$Status;

    iput-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->playState:Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerControllerInterface$Status;

    goto :goto_0

    .line 1349
    :cond_3
    sget-object v0, Lcom/dgiot/speedmonitoring/ui/live/controller/PlayFileControllerInterface$Status;->OTHER:Lcom/dgiot/speedmonitoring/ui/live/controller/PlayFileControllerInterface$Status;

    if-ne p1, v0, :cond_4

    .line 1350
    sget-object p1, Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerControllerInterface$Status;->OTHER_ERROR:Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerControllerInterface$Status;

    iput-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->playState:Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerControllerInterface$Status;

    :cond_4
    :goto_0
    return-void
.end method

.method public final dealChangePortrait()V
    .locals 2

    const-string v0, "dealChangePortrait:start"

    .line 1895
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1896
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->progressIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1899
    :cond_0
    iget-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isThreeVideo:Z

    if-eqz v0, :cond_1

    .line 1900
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->changeToLandscapeView()V

    goto :goto_0

    .line 1902
    :cond_1
    iget-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isLoadUpDownView:Z

    if-eqz v0, :cond_4

    .line 1903
    iget-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->doubleVideo:Z

    if-eqz v0, :cond_3

    .line 1904
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoSizeState:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1905
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoLiveViewControl:Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->clickChangeToBigSize()V

    goto :goto_0

    .line 1907
    :cond_2
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoLiveViewControl:Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->clickChangeToSmallSize()V

    goto :goto_0

    .line 1910
    :cond_3
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->changeToLandscapeView()V

    goto :goto_0

    .line 1913
    :cond_4
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->changeToLandscapeView()V

    :goto_0
    return-void
.end method

.method public final dealLedResult(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    const-string p1, "state"

    const-string v0, "changeLog dealLedResult:"

    const-string v1, "selectLedStateVox:ledDelayClose:"

    const-string v2, "parseRtmpAddress==>."

    const-string/jumbo v3, "updatePlayerStatus:status====>changeStream:"

    const-string v4, "parseRtmpAddress==> change\uff1a"

    const-string v5, "getVideoStreamParam return->"

    const-string v6, "MyWebSocketClient message:             >>"

    const-string v7, "message"

    invoke-static {p2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2056
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 2057
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    .line 2058
    invoke-virtual {v6, p1, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v9, "data"

    const/16 v10, 0xb

    if-eq v8, v10, :cond_1

    :try_start_1
    const-string v8, "code"

    invoke-virtual {v6, v8, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v10, :cond_0

    goto/16 :goto_0

    .line 2072
    :cond_0
    invoke-virtual {v6, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    const/16 v1, 0x16

    if-ne p1, v1, :cond_5

    .line 2073
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 2074
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 2075
    iget-boolean p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->changeStream:Z

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 2076
    iget-boolean p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->changeStream:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-nez p1, :cond_5

    .line 2078
    :try_start_2
    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "toString(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->parseRtmpAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2079
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    const-string p2, "time startVideo startOpenVideo"

    .line 2080
    invoke-static {p2}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 2081
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 2082
    iput-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->upVideoUrl:Ljava/lang/String;

    .line 2083
    invoke-direct {p0, p1}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->startOpenVideo(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_3

    :catch_0
    :try_start_3
    const-string p1, "setVideoCanOperate false (9)"

    .line 2085
    invoke-static {p1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 2086
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoLiveViewControl:Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v7}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->setVideoCanOperate(Z)V

    goto/16 :goto_3

    .line 2059
    :cond_1
    :goto_0
    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "led"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 2060
    iget-object p2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p2, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p2, p2, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->ilPlayControlBtn:Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlBtnBinding;

    iget-object p2, p2, Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlBtnBinding;->ibVox:Landroid/widget/ImageButton;

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    move v2, v0

    goto :goto_1

    :cond_2
    move v2, v7

    :goto_1
    invoke-virtual {p2, v2}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 2061
    iget-object p2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p2, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p2, p2, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->ibLedLand:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_3

    move v2, v0

    goto :goto_2

    :cond_3
    move v2, v7

    :goto_2
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    if-ne p1, v0, :cond_5

    .line 2062
    iget-boolean p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->userOperateLed:Z

    if-nez p1, :cond_5

    .line 2063
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->ledCotrolHandler:Landroid/os/Handler;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->ledDelayClose:Ljava/lang/Runnable;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2064
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    sget-object v0, Lcom/dgiot/speedmonitoring/DGConfiguration;->ledOpenTimeMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->productSn:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    sub-long/2addr p1, v2

    .line 2065
    iget v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->ledCloseTime:I

    int-to-long v2, v0

    sub-long/2addr v2, p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 2066
    iget v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->ledCloseTime:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    .line 2067
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->ledCotrolHandler:Landroid/os/Handler;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->ledDelayClose:Ljava/lang/Runnable;

    iget v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->ledCloseTime:I

    int-to-long v2, v2

    sub-long/2addr v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    .line 2069
    :cond_4
    invoke-direct {p0, v7}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->requestLedSet(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    :cond_5
    :goto_3
    return-void
.end method

.method public final extractIpFromRtmpUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const-string v0, "rtmpUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "rtmp://"

    const/4 v3, 0x0

    .line 1250
    invoke-static {p1, v2, v3, v0, v1}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x7

    .line 1253
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "this as java.lang.String).substring(startIndex)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1254
    move-object v4, p1

    check-cast v4, Ljava/lang/CharSequence;

    const/16 v5, 0x3a

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x6

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    return-object v1

    .line 1258
    :cond_1
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v0, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public finish()V
    .locals 2

    .line 290
    iget-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->screenIsVerticalScreen:Z

    if-eqz v0, :cond_1

    .line 291
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 300
    :cond_0
    invoke-super {p0}, Lcom/dgiot/speedmonitoring/base/BaseActivity;->finish()V

    return-void

    :cond_1
    :goto_0
    const-string v0, "finish intercept: change to portrait"

    .line 293
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 294
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->cancelShotAnimator()V

    const/4 v0, 0x1

    .line 295
    invoke-virtual {p0, v0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->setRequestedOrientation(I)V

    .line 296
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->changeHeaderViewPortrait()V

    .line 297
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/iot/demo/ipcview/util/ScreenUtils;->showSystemUI(Landroid/view/Window;)V

    return-void
.end method

.method public final getBase()Lcom/dgiot/speedmonitoring/base/Base;
    .locals 2

    .line 2224
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->base:Lcom/dgiot/speedmonitoring/base/Base;

    const-string v1, "base"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getCenterPopup()Lcom/lxj/xpopup/core/BasePopupView;
    .locals 1

    .line 2183
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->centerPopup:Lcom/lxj/xpopup/core/BasePopupView;

    return-object v0
.end method

.method public final getChangeStreamUrl()Ljava/lang/String;
    .locals 1

    .line 725
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->changeStreamUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getChildFragments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    .line 214
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->childFragments:Ljava/util/List;

    return-object v0
.end method

.method public final getDefinitionIcon()[I
    .locals 1

    .line 818
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->definitionIcon:[I

    return-object v0
.end method

.method public final getDefinitionLandIcon()[I
    .locals 1

    .line 817
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->definitionLandIcon:[I

    return-object v0
.end method

.method public final getDeviceDirectionReversalValue()[I
    .locals 1

    .line 986
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->deviceDirectionReversalValue:[I

    return-object v0
.end method

.method public final getFirstLoad()Z
    .locals 1

    .line 1889
    iget-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->firstLoad:Z

    return v0
.end method

.method public final getFirstOpen()Z
    .locals 1

    .line 1702
    iget-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->firstOpen:Z

    return v0
.end method

.method public final getFrameSizeHeight()I
    .locals 1

    .line 1307
    iget v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->frameSizeHeight:I

    return v0
.end method

.method public final getFrameSizeWidth()I
    .locals 1

    .line 1306
    iget v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->frameSizeWidth:I

    return v0
.end method

.method public final getInitMenuSelectDefaultIndex()Z
    .locals 1

    .line 1093
    iget-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->initMenuSelectDefaultIndex:Z

    return v0
.end method

.method public final getLastRxByte()J
    .locals 2

    .line 1262
    iget-wide v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->lastRxByte:J

    return-wide v0
.end method

.method public final getLastTxBytes()J
    .locals 2

    .line 1263
    iget-wide v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->lastTxBytes:J

    return-wide v0
.end method

.method public final getMAdHintRechargePops()Lcom/lxj/xpopup/core/BasePopupView;
    .locals 1

    .line 3076
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->mAdHintRechargePops:Lcom/lxj/xpopup/core/BasePopupView;

    return-object v0
.end method

.method public final getMLivePlayerController()Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerController;
    .locals 1

    .line 704
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->mLivePlayerController:Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerController;

    return-object v0
.end method

.method public final getMNavigationBarHeight()I
    .locals 1

    .line 1086
    iget v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->mNavigationBarHeight:I

    return v0
.end method

.method public final getMYunPlayerController()Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerController;
    .locals 1

    .line 705
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->mYunPlayerController:Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerController;

    return-object v0
.end method

.method public final getMarqueeText()Landroid/widget/TextView;
    .locals 1

    .line 925
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->marqueeText:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getMaxReLoadNum()I
    .locals 1

    .line 1718
    iget v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->maxReLoadNum:I

    return v0
.end method

.method public final getOnlyMessageTimeInit()Z
    .locals 1

    .line 1701
    iget-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->onlyMessageTimeInit:Z

    return v0
.end method

.method public final getOnlyMessageTimeLoad()Z
    .locals 1

    .line 1700
    iget-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->onlyMessageTimeLoad:Z

    return v0
.end method

.method public final getOpenPage()Z
    .locals 1

    .line 562
    iget-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->openPage:Z

    return v0
.end method

.method public final getPauseStateText(Z)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    const-string/jumbo p1, "\u6682\u505c"

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "\u64ad\u653e"

    :goto_0
    return-object p1
.end method

.method public final getProductName()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->productName:Ljava/lang/String;

    return-object v0
.end method

.method public final getRecordPermission()Z
    .locals 1

    .line 1129
    iget-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->recordPermission:Z

    return v0
.end method

.method public final getRenderState()Z
    .locals 3

    .line 2304
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->nowPlayerController:Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerController;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerController;->getRenderer()Lcom/android/dgplayer/DGRenderController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2305
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->nowPlayerController:Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerController;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerController;->getRenderer()Lcom/android/dgplayer/DGRenderController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dgplayer/DGRenderController;->isRunning()Z

    move-result v0

    .line 2306
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "renderState:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final getSelectStream()I
    .locals 1

    .line 722
    iget v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->selectStream:I

    return v0
.end method

.method public final getStartSpeaker()Z
    .locals 1

    .line 1128
    iget-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->startSpeaker:Z

    return v0
.end method

.method public final getUpTouchTime()J
    .locals 2

    .line 2390
    iget-wide v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->upTouchTime:J

    return-wide v0
.end method

.method public final getVideoLiveClickControl()Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveClickControl;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoLiveClickControl:Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveClickControl;

    return-object v0
.end method

.method public bridge synthetic getViewBinding()Landroidx/viewbinding/ViewBinding;
    .locals 1

    .line 121
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->getViewBinding()Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    move-result-object v0

    check-cast v0, Landroidx/viewbinding/ViewBinding;

    return-object v0
.end method

.method protected getViewBinding()Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;
    .locals 2

    .line 200
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    move-result-object v0

    const-string v1, "inflate(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getYunInfo()V
    .locals 3

    .line 3012
    sget-object v0, Lcom/dgiot/speedmonitoring/repository/DGApiRepository;->INSTANCE:Lcom/dgiot/speedmonitoring/repository/DGApiRepository;

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->productSn:Ljava/lang/String;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v2, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity$getYunInfo$1;

    invoke-direct {v2, p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity$getYunInfo$1;-><init>(Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;)V

    check-cast v2, Lcom/dgiot/speedmonitoring/http/ResponseCallBack;

    invoke-virtual {v0, v1, v2}, Lcom/dgiot/speedmonitoring/repository/DGApiRepository;->requestCloudInfo2(Ljava/lang/String;Lcom/dgiot/speedmonitoring/http/ResponseCallBack;)V

    return-void
.end method

.method public final hideAdMenu()V
    .locals 4

    .line 2974
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->ivAdFlag:Landroid/widget/ImageView;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ivAdFlagLog:hideAdMenu : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 2975
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->ivAdFlag:Landroid/widget/ImageView;

    :cond_1
    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public final hideProgressView()V
    .locals 2

    .line 1355
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->progressIndicator:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1356
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->progressIndicator2:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1357
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->progressIndicator3:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public final initBottomControl()V
    .locals 5

    const-string v0, "checkDeviceHasNavigationBar = "

    const-string v1, "checkDeviceHasNavigationBar:"

    .line 1051
    :try_start_0
    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    invoke-static {v2}, Lcom/common/util/utils/NavigationUtils;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->mNavigationBarHeight:I

    .line 1052
    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    invoke-static {v2}, Lcom/common/util/utils/NavigationUtils;->getStatusBarHeight(Landroid/content/Context;)I

    const/4 v2, 0x0

    .line 1053
    iput v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->mStatusBarHeight:I

    .line 1054
    iget v3, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->mNavigationBarHeight:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1055
    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Lcom/common/util/utils/NavigationUtils;->checkDeviceHasNavigationBar(Landroid/content/Context;)Z

    .line 1056
    iget v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->mStatusBarHeight:I

    if-lez v1, :cond_0

    .line 1057
    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Lcom/common/util/utils/NavigationUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1058
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->indicatorView:Lcom/dgiot/speedmonitoring/ui/view/IndicatorView;

    invoke-virtual {v1}, Lcom/dgiot/speedmonitoring/ui/view/IndicatorView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.widget.RelativeLayout.LayoutParams"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1059
    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    invoke-static {v2}, Lcom/common/util/utils/NavigationUtils;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 1062
    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    .line 1061
    invoke-static {v2}, Lcom/common/util/utils/NavigationUtils;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1060
    invoke-static {v2}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1065
    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v2, v2, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->indicatorView:Lcom/dgiot/speedmonitoring/ui/view/IndicatorView;

    check-cast v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v2, v1}, Lcom/dgiot/speedmonitoring/ui/view/IndicatorView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1068
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public final initShowYunRechargeHintDialog()V
    .locals 3

    .line 2455
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->productSn:Ljava/lang/String;

    invoke-static {v0}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getYunRechargeCanHint(Ljava/lang/String;)Z

    move-result v0

    .line 2456
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getYunRechargeHintInfo:can="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 2458
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->showYunRechargeHintDialog()V

    :cond_0
    return-void
.end method

.method public final initVideoControl()V
    .locals 4

    .line 1570
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->playType:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    sget-object v1, Lcom/dgiot/speedmonitoring/ui/live/PlayType;->LIVE_VIDEO:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->playType:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    sget-object v1, Lcom/dgiot/speedmonitoring/ui/live/PlayType;->RECORD_VIDEO:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "setListener:DGPlayerControllerInterface->"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1571
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->playType:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    sget-object v1, Lcom/dgiot/speedmonitoring/ui/live/PlayType;->LIVE_VIDEO:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->playType:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    sget-object v1, Lcom/dgiot/speedmonitoring/ui/live/PlayType;->RECORD_VIDEO:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    if-ne v0, v1, :cond_2

    goto :goto_2

    .line 1583
    :cond_2
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->nowPlayerController:Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerController;

    if-eqz v0, :cond_3

    .line 1584
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerController;->mute()V

    .line 1587
    :cond_3
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoLiveClickControl:Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveClickControl;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v2}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveClickControl;->setSpeedState(Z)V

    :cond_4
    const-string v0, "setListener:mDGPlayerFileControllerInterface."

    .line 1588
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1589
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->getYunPlayerController()Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerController;

    move-result-object v0

    iput-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->nowPlayerController:Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerController;

    const-string v0, "setListener:mDGPlayerFileControllerInterface"

    .line 1590
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1591
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->nowPlayerController:Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerController;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->mDGPlayerFileControllerInterface:Lcom/dgiot/speedmonitoring/ui/live/controller/PlayFileControllerInterface;

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerController;->setListener(Ljava/lang/ref/WeakReference;)V

    goto :goto_3

    .line 1572
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->nowPlayerController:Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerController;

    if-eqz v0, :cond_6

    .line 1573
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerController;->mute()V

    .line 1576
    :cond_6
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoLiveClickControl:Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveClickControl;

    if-eqz v0, :cond_7

    invoke-virtual {v0, v2}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveClickControl;->setSpeedState(Z)V

    .line 1577
    :cond_7
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->getLivePlayerController()Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerController;

    move-result-object v0

    iput-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->nowPlayerController:Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerController;

    const-string v0, "setListener:DGPlayerControllerInterface"

    .line 1578
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1579
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->nowPlayerController:Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerController;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->mDGPlayerControllerInterface:Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerControllerInterface;

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerController;->setListener(Ljava/lang/ref/WeakReference;)V

    const-string v0, "playProgress_playProgress_playBack2:"

    .line 1580
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1581
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->nowPlayerController:Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerController;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    invoke-interface {v0, v1, v2}, Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerController;->playBack(D)V

    :goto_3
    return-void
.end method

.method public final initYunView()V
    .locals 4

    .line 2884
    iget-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->onlyMessageTimeInit:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onlyMessageTimeInit:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 2893
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->productSn:Ljava/lang/String;

    invoke-static {v0}, Lcom/dgiot/speedmonitoring/util/YunInfoUtil;->isYunOk(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 2894
    invoke-virtual {p0, v0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->showYunViewState(Z)V

    .line 2895
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoRecordYunFragment:Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;

    if-nez v1, :cond_2

    const-string v1, "initYunViewLog:videoRecordYunFragment start"

    .line 2896
    invoke-static {v1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 2897
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->productSn:Ljava/lang/String;

    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->messageTime:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->needPlayYun2:Z

    invoke-static {v1, v2, v0, v3}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoRecordYunFragment:Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;

    if-eqz v0, :cond_0

    .line 2898
    new-instance v1, Lcom/dgiot/speedmonitoring/ui/live/impl/VideoYunRecordViewOperateImpl;

    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    invoke-direct {v1, p0, v2}, Lcom/dgiot/speedmonitoring/ui/live/impl/VideoYunRecordViewOperateImpl;-><init>(Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;)V

    check-cast v1, Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;

    invoke-virtual {v0, v1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->setVideoRecordViewOperateListener(Lcom/dgiot/speedmonitoring/ui/live/interfaces/VideoYunRecordViewOperateListener;)V

    .line 2899
    :cond_0
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const-string v1, "beginTransaction(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2900
    sget v1, Lcom/dgiot/speedmonitoring/R$id;->fragment_container:I

    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoRecordYunFragment:Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    const-string/jumbo v1, "video_record"

    .line 2901
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 2902
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 2906
    invoke-virtual {p0, v0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->showYunViewState(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected initialize()V
    .locals 4

    .line 240
    sget-object v0, Lcom/dgiot/speedmonitoring/http/DGStorageServerManager;->mTempYunFileListMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 241
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->initOnBackPressedDispatcher()V

    .line 242
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->initTimeViewHeight()V

    .line 244
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->initOperateControl()V

    .line 245
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->initWebRtc()V

    const-string v0, "startVideo log live surfaceCreated>>> activity : create"

    .line 246
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 247
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->hideSystemUI()V

    .line 248
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->initBundle(Landroid/content/Intent;)V

    .line 249
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->initDelayRetryMillis()V

    .line 250
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->initView()V

    .line 251
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->initData()V

    const/4 v0, 0x1

    .line 252
    invoke-virtual {p0, v0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->controlBottomMenuShow(I)V

    .line 254
    invoke-static {v0}, Lcom/dgiot/speedmonitoring/http/DGStorageServerManager;->getFilePathMap(Z)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    const/4 v1, 0x0

    .line 255
    invoke-static {v1}, Lcom/dgiot/speedmonitoring/http/DGStorageServerManager;->getFilePathMap(Z)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 257
    iget v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->deviceRole:I

    if-eq v2, v0, :cond_0

    sget-object v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->Companion:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity$Companion;

    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->devicePermission:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity$Companion;->isHasRecordingPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 258
    :cond_0
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->initVideoRecordFragment()V

    .line 259
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->initVideoRecordYun1Fragment()V

    .line 260
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->initVideoRecordYun2Fragment()V

    .line 261
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->childFragments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 262
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->childFragments:Ljava/util/List;

    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoRecordFragment:Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->childFragments:Ljava/util/List;

    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoRecordYun1Fragment:Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    new-instance v0, Lcom/dgiot/speedmonitoring/adapter/RecordMenuAdapter;

    move-object v2, p0

    check-cast v2, Landroidx/fragment/app/FragmentActivity;

    iget-object v3, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->childFragments:Ljava/util/List;

    invoke-direct {v0, v2, v3}, Lcom/dgiot/speedmonitoring/adapter/RecordMenuAdapter;-><init>(Landroidx/fragment/app/FragmentActivity;Ljava/util/List;)V

    iput-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->recordMenuAdapter:Lcom/dgiot/speedmonitoring/adapter/RecordMenuAdapter;

    .line 266
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->vp2Menu3:Landroidx/viewpager2/widget/ViewPager2;

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->recordMenuAdapter:Lcom/dgiot/speedmonitoring/adapter/RecordMenuAdapter;

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, v3}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 267
    :goto_1
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->vp2Menu3:Landroidx/viewpager2/widget/ViewPager2;

    goto :goto_2

    :cond_3
    move-object v0, v2

    :goto_2
    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroidx/viewpager2/widget/ViewPager2;->setOffscreenPageLimit(I)V

    .line 268
    :goto_3
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    if-eqz v0, :cond_5

    iget-object v2, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->vp2Menu3:Landroidx/viewpager2/widget/ViewPager2;

    :cond_5
    if-nez v2, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {v2, v1}, Landroidx/viewpager2/widget/ViewPager2;->setUserInputEnabled(Z)V

    .line 271
    :cond_7
    :goto_4
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->initBluetoothListener()V

    .line 273
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->initRecordMenuPosition()V

    return-void
.end method

.method public final isCanRetryLiveVideoStreamTask()Z
    .locals 2

    .line 1728
    iget v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->lowPowerReLoadNumFlag:I

    iget v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->maxReLoadNum:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isHandUp()Z
    .locals 1

    .line 1024
    iget-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->mResumed:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final isHideInternal()Z
    .locals 1

    .line 162
    iget-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isHideInternal:Z

    return v0
.end method

.method public final isHideSoundView()Z
    .locals 1

    .line 1370
    iget-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isHideSoundView:Z

    return v0
.end method

.method public final isIsRunningOpenRecordPerm()Z
    .locals 1

    .line 1130
    iget-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isIsRunningOpenRecordPerm:Z

    return v0
.end method

.method public final isPlaying()Z
    .locals 2

    .line 1077
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->playType:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    sget-object v1, Lcom/dgiot/speedmonitoring/ui/live/PlayType;->LIVE_VIDEO:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->playType:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    sget-object v1, Lcom/dgiot/speedmonitoring/ui/live/PlayType;->RECORD_VIDEO:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    if-ne v0, v1, :cond_1

    .line 1078
    :cond_0
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->playState:Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerControllerInterface$Status;

    sget-object v1, Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerControllerInterface$Status;->OPEN_FAIL:Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerControllerInterface$Status;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->playState:Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerControllerInterface$Status;

    sget-object v1, Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerControllerInterface$Status;->OTHER_ERROR:Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerControllerInterface$Status;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->playState:Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerControllerInterface$Status;

    sget-object v1, Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerControllerInterface$Status;->OPEN_NETWORK_ERROR:Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerControllerInterface$Status;

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final isReLoadPlayer()Z
    .locals 1

    .line 2534
    iget-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isReLoadPlayer:Z

    return v0
.end method

.method public final isShowHintFlag()Z
    .locals 1

    .line 3078
    iget-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isShowHintFlag:Z

    return v0
.end method

.method public final isStopPlayState()Z
    .locals 5

    .line 3005
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->llDeviceSleep:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->llDeviceOffline:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v0, v2

    goto :goto_3

    :cond_3
    :goto_2
    move v0, v1

    .line 3006
    :goto_3
    iget-object v3, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->playType:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    sget-object v4, Lcom/dgiot/speedmonitoring/ui/live/PlayType;->RECORD_VIDEO:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    if-ne v3, v4, :cond_5

    if-nez v0, :cond_6

    .line 3007
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->ilPlayControlBtnRecord:Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlRecordBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlRecordBinding;->ibControl:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_4

    :cond_4
    move v1, v2

    goto :goto_4

    :cond_5
    move v1, v0

    :cond_6
    :goto_4
    return v1
.end method

.method public onBackPressed()V
    .locals 0

    .line 2838
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->handlePageBack()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 7

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2799
    invoke-super {p0, p1}, Lcom/dgiot/speedmonitoring/base/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2800
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "VideoLiveActivityLog: onConfigurationChanged,landscape:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->w(Ljava/lang/String;)V

    const-string v0, "power"

    .line 2801
    invoke-virtual {p0, v0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v4, "null cannot be cast to non-null type android.os.PowerManager"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/os/PowerManager;

    .line 2803
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "VideoLiveActivityLog: isInteractive: false"

    .line 2804
    invoke-static {p1}, Lcom/common/util/ALog;->w(Ljava/lang/String;)V

    return-void

    .line 2811
    :cond_1
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v3, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "newConfig.orientation == ActivityInfo.SCREEN_ORIENTATION_USER->)"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 2812
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v3, :cond_3

    .line 2813
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/iot/demo/ipcview/util/ScreenUtils;->hideSystemUI(Landroid/view/Window;)V

    const-string v0, "ScreenUtils.hideSystemUI(getWindow())"

    .line 2814
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 2815
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->uiHandler:Landroid/os/Handler;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->hideSystemUIAction:Ljava/lang/Runnable;

    const-wide/16 v5, 0x1f4

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    :cond_3
    const-string v0, "ScreenUtils.showSystemUI(getWindow())"

    .line 2817
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 2818
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->uiHandler:Landroid/os/Handler;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->hideSystemUIAction:Ljava/lang/Runnable;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2819
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/iot/demo/ipcview/util/ScreenUtils;->showSystemUI(Landroid/view/Window;)V

    .line 2822
    :goto_2
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isHandUp()Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    .line 2825
    :cond_4
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne p1, v3, :cond_5

    .line 2826
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoLiveViewControl:Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->changeToLandscape()V

    goto :goto_3

    .line 2828
    :cond_5
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoLiveViewControl:Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->changeToPortrait()V

    .line 2830
    :goto_3
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoLiveViewControl:Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->playType:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    sget-object v3, Lcom/dgiot/speedmonitoring/ui/live/PlayType;->LIVE_VIDEO:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    if-ne v0, v3, :cond_6

    goto :goto_4

    :cond_6
    move v1, v2

    :goto_4
    invoke-virtual {p1, v1}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->controlOtherViewState(Z)V

    .line 2831
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->shotIv:Landroid/widget/ImageView;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity$$ExternalSyntheticLambda19;

    invoke-direct {v0, p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity$$ExternalSyntheticLambda19;-><init>(Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 2832
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->uiHandler:Landroid/os/Handler;

    if-eqz p1, :cond_7

    .line 2833
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity$$ExternalSyntheticLambda1;-><init>(Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_7
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 2753
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->ledCotrolHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->ledDelayClose:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 2754
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->ledDelayClose:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    const-string v0, "startVideo log live surfaceCreated>>> activity : onDestroy"

    .line 2756
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2757
    sput-boolean v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->openState:Z

    .line 2758
    sput-boolean v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isRunning:Z

    .line 2759
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sput-wide v0, Lcom/dgiot/speedmonitoring/DGConfiguration;->upCloseOperateTime:J

    .line 2760
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->nowPlayerController:Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerController;

    if-eqz v0, :cond_1

    .line 2761
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerController;->setListener(Ljava/lang/ref/WeakReference;)V

    .line 2762
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->nowPlayerController:Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerController;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerController;->destroyPlayer()V

    .line 2763
    iput-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->nowPlayerController:Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerController;

    .line 2764
    iput-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->mDGPlayerControllerInterface:Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerControllerInterface;

    .line 2765
    iput-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->mDGPlayerFileControllerInterface:Lcom/dgiot/speedmonitoring/ui/live/controller/PlayFileControllerInterface;

    :cond_1
    const-string v0, "VideoLiveActivityLog: onDestroy"

    .line 2767
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 2768
    invoke-super {p0}, Lcom/dgiot/speedmonitoring/base/BaseActivity;->onDestroy()V

    .line 2769
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->bluetoothHeadset:Landroid/bluetooth/BluetoothProfile;

    if-eqz v0, :cond_2

    .line 2770
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->bluetoothHeadset:Landroid/bluetooth/BluetoothProfile;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    :cond_2
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const-string v0, "event"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x4

    if-ne p1, p2, :cond_1

    .line 2230
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->progressIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 2231
    iget-boolean p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->refreshWindow:Z

    if-eqz p1, :cond_0

    .line 2232
    new-instance p1, Landroid/content/Intent;

    move-object p2, p0

    check-cast p2, Landroid/content/Context;

    const-class v0, Lcom/dgiot/speedmonitoring/MainActivity;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->startActivity(Landroid/content/Intent;)V

    .line 2234
    :cond_0
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->finish()V

    const/4 p1, 0x1

    return p1

    :cond_1
    if-ne p1, p2, :cond_2

    const-string/jumbo p1, "updateVideoUrlTime:KEYCODE_BACK1"

    .line 2237
    invoke-static {p1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 2238
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->updateVideoUrlTime()V

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    invoke-super {p0, p1}, Lcom/dgiot/speedmonitoring/base/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    const-string v0, "reOpenInitBundle()"

    .line 218
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 219
    invoke-direct {p0, p1}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->initBundle(Landroid/content/Intent;)V

    .line 220
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->initHeader()V

    return-void
.end method

.method protected onPause()V
    .locals 3

    const/4 v0, 0x0

    .line 2669
    iput-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isCanWritePng:Z

    const/4 v0, 0x1

    .line 2670
    iput-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->canUpdateLoadTime:Z

    const-string v1, "startVideo log live surfaceCreated>>> activity : onPause"

    .line 2671
    invoke-static {v1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 2672
    iget-boolean v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isIsRunningOpenRecordPerm:Z

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const-string v1, "startOnPause onPause"

    .line 2673
    invoke-static {v1}, Lcom/common/util/ALog;->w(Ljava/lang/String;)V

    .line 2674
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->nowPlayerController:Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerController;

    if-eqz v1, :cond_0

    const-string v1, "startWritePng:End"

    .line 2675
    invoke-static {v1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    const-string v1, "startWritePng:stopRender"

    .line 2677
    invoke-static {v1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 2678
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->nowPlayerController:Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerController;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1}, Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerController;->stopRender()V

    .line 2679
    iput-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->onlyOnPause:Z

    .line 2681
    :cond_0
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const-string v1, "getDecorView(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2682
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 2683
    invoke-static {}, Lcom/dgiot/speedmonitoring/service/DeviceInfoService;->stopServer()V

    .line 2684
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->stopTimer()V

    .line 2685
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->uiHandler:Landroid/os/Handler;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->delaySleepRunnable:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity$DelaySleepRunnable;

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2687
    :cond_1
    invoke-super {p0}, Lcom/dgiot/speedmonitoring/base/BaseActivity;->onPause()V

    .line 2688
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->bluetoothDeviceReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    .line 2689
    invoke-virtual {p0, v0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2690
    iput-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->bluetoothDeviceReceiver:Landroid/content/BroadcastReceiver;

    :cond_2
    return-void
.end method

.method protected onResume()V
    .locals 8

    .line 2591
    invoke-super {p0}, Lcom/dgiot/speedmonitoring/base/BaseActivity;->onResume()V

    .line 2592
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->glsSmall:Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->glsBig:Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v0, 0x0

    .line 2596
    iput-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isStartWritePng:Z

    .line 2597
    sget-object v1, Lcom/dgiot/speedmonitoring/DGConfiguration;->updateNickName:Ljava/lang/String;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_4

    .line 2598
    sget-object v1, Lcom/dgiot/speedmonitoring/DGConfiguration;->updateNickName:Ljava/lang/String;

    const-string/jumbo v3, "updateNickName"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->productSn:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static {v1, v4, v0, v6, v7}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2601
    sget-object v1, Lcom/dgiot/speedmonitoring/DGConfiguration;->updateNickName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/CharSequence;

    new-instance v3, Lkotlin/text/Regex;

    invoke-direct {v3, v5}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v0}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object v1

    .line 3128
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 3129
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v1, v3}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v3

    .line 3130
    :cond_1
    invoke-interface {v3}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3131
    invoke-interface {v3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2601
    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_2

    move v4, v2

    goto :goto_0

    :cond_2
    move v4, v0

    :goto_0
    if-nez v4, :cond_1

    .line 3132
    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/util/ListIterator;->nextIndex()I

    move-result v3

    add-int/2addr v3, v2

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v1

    goto :goto_1

    .line 3136
    :cond_3
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    :goto_1
    check-cast v1, Ljava/util/Collection;

    new-array v3, v0, [Ljava/lang/String;

    .line 3138
    invoke-interface {v1, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 2602
    aget-object v1, v1, v2

    .line 2600
    iput-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->productName:Ljava/lang/String;

    .line 2603
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->updateProductName()V

    .line 2605
    :cond_4
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->ilPlayControlBtn:Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlBtnBinding;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlBtnBinding;->ibVox:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->isSelected()Z

    move-result v1

    iget-boolean v3, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->ledValueState:Z

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "selectLedStateVox:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 2606
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->ilPlayControlBtn:Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlBtnBinding;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlBtnBinding;->ibVox:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->isSelected()Z

    move-result v1

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->ledValueState:Z

    if-eqz v1, :cond_6

    .line 2607
    :cond_5
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->selectLedState()V

    :cond_6
    const-string v1, "reOpenInitBundle() onResume"

    .line 2609
    invoke-static {v1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    const-string v1, "startVideo log live surfaceCreated>>> activity : onResume"

    .line 2610
    invoke-static {v1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 2611
    iput-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isIsRunningOpenRecordPerm:Z

    .line 2612
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->nowPlayerController:Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerController;

    if-eqz v1, :cond_9

    .line 2613
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1}, Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerController;->startRender()V

    .line 2615
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    check-cast v1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    if-eqz v1, :cond_7

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->glsBig:Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;->tryBindSurface()V

    .line 2616
    :cond_7
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    check-cast v1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    if-eqz v1, :cond_8

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->glsSmall:Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;->tryBindSurface()V

    .line 2617
    :cond_8
    iget-boolean v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isThreeVideo:Z

    if-eqz v1, :cond_a

    .line 2618
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    check-cast v1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    if-eqz v1, :cond_a

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->glsSmall3:Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;->tryBindSurface()V

    goto :goto_2

    :cond_9
    const-string v1, "setVideoCanOperate false (20)"

    .line 2622
    invoke-static {v1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 2623
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoLiveViewControl:Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->setVideoCanOperate(Z)V

    :cond_a
    :goto_2
    const-string v1, "VideoLiveActivityLog: onResume"

    .line 2625
    invoke-static {v1}, Lcom/common/util/ALog;->w(Ljava/lang/String;)V

    .line 2626
    sput-boolean v2, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->openState:Z

    .line 2627
    sput-boolean v2, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isRunning:Z

    .line 2628
    iput-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->changeStream:Z

    .line 2629
    invoke-static {v1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 2630
    invoke-static {}, Lcom/dgiot/speedmonitoring/DGConfiguration;->isLogin()Z

    move-result v1

    if-nez v1, :cond_b

    .line 2631
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->finish()V

    .line 2633
    :cond_b
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->initBluetoothDeviceReceiver()V

    .line 2634
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.bluetooth.device.action.ACL_CONNECTED"

    .line 2635
    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.bluetooth.device.action.ACL_DISCONNECTED"

    .line 2636
    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 2637
    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2638
    iget-object v3, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->bluetoothDeviceReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v1}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2639
    iget-boolean v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isClickGoYun:Z

    if-eqz v1, :cond_c

    .line 2640
    iput-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isClickGoYun:Z

    .line 2641
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->getYunInfo()V

    .line 2644
    :cond_c
    iget-boolean v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isClickGoWeb:Z

    if-eqz v1, :cond_d

    .line 2645
    iput-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isClickGoWeb:Z

    .line 2646
    iget v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->clickGoWebIndex:I

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->playType:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "resumeMenuRecordControl:"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 2647
    iget v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->clickGoWebIndex:I

    if-ne v0, v2, :cond_d

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->playType:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    sget-object v1, Lcom/dgiot/speedmonitoring/ui/live/PlayType;->CLOUD_STORAGE_VIDEO:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    if-ne v0, v1, :cond_d

    .line 2648
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->uiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_d

    new-instance v1, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity$$ExternalSyntheticLambda9;-><init>(Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;)V

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_d
    return-void

    .line 2593
    :cond_e
    :goto_3
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->finish()V

    return-void
.end method

.method protected onStart()V
    .locals 6

    .line 2536
    invoke-super {p0}, Lcom/dgiot/speedmonitoring/base/BaseActivity;->onStart()V

    const/4 v0, 0x1

    .line 2537
    iput-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isCanWritePng:Z

    .line 2538
    iget-boolean v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isThreeVideo:Z

    if-nez v1, :cond_0

    .line 2539
    invoke-static {}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getPictureInPictureStateAll()Z

    move-result v1

    xor-int/2addr v1, v0

    iput-boolean v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isLoadUpDownView:Z

    .line 2540
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->productSn:Ljava/lang/String;

    invoke-static {v1}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getDeviceWindowNum(Ljava/lang/String;)I

    move-result v1

    .line 2541
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isLoadUpDownViewLL->"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    if-ne v1, v0, :cond_0

    const/4 v1, 0x0

    .line 2543
    iput-boolean v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isLoadUpDownView:Z

    .line 2546
    :cond_0
    iget-boolean v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isLoadUpDownView:Z

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isLoadUpDownView:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 2547
    iget v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->pageSource:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "pageSource:onStart "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 2548
    iget-boolean v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isReLoadPlayer:Z

    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->productSn:Ljava/lang/String;

    invoke-static {v2}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getDeviceState(Ljava/lang/String;)Z

    move-result v2

    iget-object v3, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->playType:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "VideoLiveActivityLog: onStart isReLoadPlayer = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/common/util/ALog;->w(Ljava/lang/String;)V

    .line 2550
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->refreshRecordMenuPosition()V

    .line 2555
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->loadVideo()V

    .line 2556
    iput-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isReLoadPlayer:Z

    return-void
.end method

.method protected onStop()V
    .locals 2

    const-string v0, "startVideo log live surfaceCreated>>> activity : onStop"

    .line 2695
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2696
    iput-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->onlyOnPause:Z

    const-string v1, "VideoLiveActivityLog: onStop"

    .line 2697
    invoke-static {v1}, Lcom/common/util/ALog;->w(Ljava/lang/String;)V

    .line 2699
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->mSocketMessageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2700
    iput-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->mResumed:Z

    .line 2701
    iput-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->openPage:Z

    .line 2702
    iput-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->userOperateLed:Z

    .line 2703
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->stopVideo()V

    .line 2705
    :try_start_0
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->ilPlayControlBtn:Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlBtnBinding;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlBtnBinding;->ibSpeaker:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 2707
    invoke-direct {p0, v0, v1}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->controlVol(ZZ)V

    .line 2709
    :cond_0
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->ilPlayControlBtn:Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlBtnBinding;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlBtnBinding;->ibMute:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2710
    invoke-direct {p0, v0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->setVoxSelect(Z)V

    .line 2711
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->nowPlayerController:Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerController;

    if-eqz v0, :cond_1

    .line 2712
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerController;->mute()V

    .line 2713
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->base:Lcom/dgiot/speedmonitoring/base/Base;

    invoke-virtual {v0}, Lcom/dgiot/speedmonitoring/base/Base;->dismissLoadDialog()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2718
    :catch_0
    :cond_1
    invoke-static {}, Lcom/dgiot/speedmonitoring/DGConfiguration;->clean()V

    .line 2719
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->uiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 2720
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->delayCloseVideoRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2721
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->uiHandler:Landroid/os/Handler;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2725
    :cond_2
    invoke-super {p0}, Lcom/dgiot/speedmonitoring/base/BaseActivity;->onStop()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2392
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->upTouchTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 2393
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->upTouchTime:J

    .line 2394
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "video onTouchEvent:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 2395
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->updateDelaySleepRunnable()V

    .line 2397
    :cond_0
    invoke-super {p0, p1}, Lcom/dgiot/speedmonitoring/base/BaseActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    .line 2786
    invoke-super {p0, p1}, Lcom/dgiot/speedmonitoring/base/BaseActivity;->onWindowFocusChanged(Z)V

    .line 2787
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/iot/demo/ipcview/util/ScreenUtils;->isOrientationLandscape(Landroid/content/res/Resources;)Z

    move-result v0

    .line 2788
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onWindowFocusChanged: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  landscape:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 2790
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->hideSystemUI()V

    .line 2791
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoLiveViewControl:Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->changeToLandscape()V

    :cond_0
    if-eqz p1, :cond_1

    .line 2794
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->setImmersionBar()V

    :cond_1
    return-void
.end method

.method public final reSendLiveVideoStreamParam()V
    .locals 1

    .line 2246
    iget v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->lowPowerReLoadNumFlag:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->lowPowerReLoadNumFlag:I

    .line 2247
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->requestLiveVideoStreamParam()V

    return-void
.end method

.method public final refreshLoadVideo()V
    .locals 4

    .line 2343
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->playType:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->playState:Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerControllerInterface$Status;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "refreshLoadVideo:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 2344
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->playType:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    sget-object v1, Lcom/dgiot/speedmonitoring/ui/live/PlayType;->LIVE_VIDEO:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    if-ne v0, v1, :cond_0

    const-string v0, "checkLiveVideoStreamRunnable refreshLoadVideo"

    .line 2345
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 2346
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->startRetry()V

    .line 2347
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->checkRender()V

    .line 2348
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->reLoadSleepLiveVideo()V

    goto :goto_0

    .line 2349
    :cond_0
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->playType:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    sget-object v1, Lcom/dgiot/speedmonitoring/ui/live/PlayType;->RECORD_VIDEO:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    if-ne v0, v1, :cond_1

    const-string v0, "reOpenRecordVideo_flag:4"

    .line 2351
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 2352
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->reOpenRecordVideo()V

    goto :goto_0

    .line 2354
    :cond_1
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->playType:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    sget-object v1, Lcom/dgiot/speedmonitoring/ui/live/PlayType;->CLOUD_STORAGE_INTERNAL_VIDEO:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    const-string v0, "reOpenRecordVideo_flag:5"

    .line 2355
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 2356
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoRecordYun1Fragment:Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->reOpenRecordVideo(Z)V

    goto :goto_0

    .line 2357
    :cond_2
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->playType:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    sget-object v1, Lcom/dgiot/speedmonitoring/ui/live/PlayType;->CLOUD_STORAGE_VIDEO:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    if-ne v0, v1, :cond_3

    const-string v0, "reOpenRecordVideo_flag:6"

    .line 2358
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 2359
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoRecordYunFragment:Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->reOpenRecordVideo(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final requestLiveVideoStreamParam()V
    .locals 5

    .line 1804
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->delayCloseVideo()V

    .line 1805
    iget-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isFirstOpenByMessage:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "time startVideo getVideoStreamParam 1"

    .line 1808
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1809
    sget-object v0, Lcom/dgiot/speedmonitoring/ui/live/PlayType;->LIVE_VIDEO:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    iput-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->playType:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    .line 1810
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isHighRequestVideoUrl()Z

    move-result v0

    .line 1811
    sget-object v1, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->Companion:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity$Companion;

    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->productSn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity$Companion;->isVersionOk(Ljava/lang/String;)Z

    move-result v1

    .line 1812
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "saveRequestVideoUrlTime:get times ="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 1814
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->oldAddress:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getLiveVideoStreamParam>>>isHighRequestVideoUrl "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1815
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->oldAddress:Ljava/lang/String;

    iput-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->upVideoUrl:Ljava/lang/String;

    .line 1816
    iput-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->nowRtmpAddress:Ljava/lang/String;

    .line 1817
    invoke-direct {p0, v0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->startOpenVideo(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v0, ""

    .line 1821
    iput-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->upVideoUrl:Ljava/lang/String;

    .line 1823
    invoke-static {}, Lcom/dgiot/speedmonitoring/iot/DGIotClientManager;->getInstance()Lcom/dgiot/speedmonitoring/iot/DGIotClientManager;

    move-result-object v0

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->productSn:Ljava/lang/String;

    sget-object v2, Lcom/dgiot/speedmonitoring/repository/DGSocketRepository;->Companion:Lcom/dgiot/speedmonitoring/repository/DGSocketRepository$Companion;

    .line 1824
    iget-object v3, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->productSn:Ljava/lang/String;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v4, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->selectStream:I

    .line 1823
    invoke-virtual {v2, v3, v4}, Lcom/dgiot/speedmonitoring/repository/DGSocketRepository$Companion;->getVideoStreamParam(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 1825
    new-instance v3, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity$requestLiveVideoStreamParam$1;

    invoke-direct {v3}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity$requestLiveVideoStreamParam$1;-><init>()V

    check-cast v3, Lcom/dgiot/speedmonitoring/iot/DGIotClientManager$CommandListener;

    .line 1823
    invoke-virtual {v0, v1, v2, v3}, Lcom/dgiot/speedmonitoring/iot/DGIotClientManager;->send(Ljava/lang/String;Ljava/lang/String;Lcom/dgiot/speedmonitoring/iot/DGIotClientManager$CommandListener;)I

    return-void
.end method

.method public final sendPTZActionControl()V
    .locals 8

    .line 955
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->llDeviceOffline:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "sendPTZActionControl-action:return"

    .line 956
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    return-void

    .line 959
    :cond_0
    iget v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->currentAction:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sendPTZActionControl:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 960
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->task:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    .line 961
    new-instance v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity$$ExternalSyntheticLambda13;-><init>(Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;)V

    iput-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->task:Ljava/lang/Runnable;

    .line 969
    :cond_1
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->ptzScheduleExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_2

    .line 970
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity$sendPTZActionControl$2;

    invoke-direct {v1}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity$sendPTZActionControl$2;-><init>()V

    check-cast v1, Ljava/util/concurrent/ThreadFactory;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    iput-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->ptzScheduleExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 980
    :cond_2
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->ptzScheduleExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 981
    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->task:Ljava/lang/Runnable;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0xfa

    .line 982
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 980
    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->ptzScheduledHandle:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public final sendPTZActionControl(I)V
    .locals 4

    .line 988
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->updateDelaySleepRunnable()V

    .line 989
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VideoLiveActivityLog: PTZActionControl: action = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    if-ltz p1, :cond_3

    const/4 v0, 0x3

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 991
    :cond_0
    sget-object v1, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewUtil;->INSTANCE:Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewUtil;

    invoke-virtual {v1, p1}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewUtil;->changePTZActionValue(I)I

    move-result p1

    .line 992
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->productSn:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getYunTaiDirectionState(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    if-ge p1, v0, :cond_1

    .line 995
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->deviceDirectionReversalValue:[I

    add-int/lit8 p1, p1, -0x1

    aget p1, v0, p1

    .line 998
    :cond_1
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->productSn:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getYunTaiDirectionState(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    if-le p1, v1, :cond_2

    .line 1001
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->deviceDirectionReversalValue:[I

    add-int/lit8 p1, p1, -0x1

    aget p1, v0, p1

    .line 1004
    :cond_2
    invoke-static {}, Lcom/dgiot/speedmonitoring/iot/DGIotClientManager;->getInstance()Lcom/dgiot/speedmonitoring/iot/DGIotClientManager;

    move-result-object v0

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->productSn:Ljava/lang/String;

    sget-object v2, Lcom/dgiot/speedmonitoring/repository/DGSocketRepository;->Companion:Lcom/dgiot/speedmonitoring/repository/DGSocketRepository$Companion;

    .line 1005
    iget-object v3, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->productSn:Ljava/lang/String;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1004
    invoke-virtual {v2, v3, p1}, Lcom/dgiot/speedmonitoring/repository/DGSocketRepository$Companion;->getMotorSetParam(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 1006
    new-instance v2, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity$sendPTZActionControl$3;

    invoke-direct {v2}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity$sendPTZActionControl$3;-><init>()V

    check-cast v2, Lcom/dgiot/speedmonitoring/iot/DGIotClientManager$CommandListener;

    .line 1004
    invoke-virtual {v0, v1, p1, v2}, Lcom/dgiot/speedmonitoring/iot/DGIotClientManager;->send(Ljava/lang/String;Ljava/lang/String;Lcom/dgiot/speedmonitoring/iot/DGIotClientManager$CommandListener;)I

    :cond_3
    :goto_0
    return-void
.end method

.method public final setAlarmJump(ILjava/lang/String;)V
    .locals 5

    const-string v0, "msgTime"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setAlarmJump:pos = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->playType:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    sget-object v1, Lcom/dgiot/speedmonitoring/ui/live/PlayType;->LIVE_VIDEO:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v0, v1, :cond_4

    .line 307
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoRecordFragment:Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->isInitView()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "setAlarmJump:isInitView "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 308
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoLiveViewControl:Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->showLoadView()V

    :cond_1
    if-eq p1, v3, :cond_3

    if-eq p1, v2, :cond_2

    .line 318
    invoke-direct {p0, p2}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->goRecord_yun2(Ljava/lang/String;)V

    goto :goto_1

    .line 315
    :cond_2
    invoke-direct {p0, p2}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->goRecord_yun1(Ljava/lang/String;)V

    goto :goto_1

    .line 312
    :cond_3
    invoke-direct {p0, p2}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->goRecord_card(Ljava/lang/String;)V

    goto :goto_1

    .line 323
    :cond_4
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->playType:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    sget-object v1, Lcom/dgiot/speedmonitoring/ui/live/PlayType;->RECORD_VIDEO:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    if-ne v0, v1, :cond_7

    if-eq p1, v3, :cond_6

    if-eq p1, v2, :cond_5

    .line 331
    invoke-direct {p0, p2}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->goRecord_yun2(Ljava/lang/String;)V

    goto :goto_1

    .line 328
    :cond_5
    invoke-direct {p0, p2}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->goRecord_yun1(Ljava/lang/String;)V

    goto :goto_1

    .line 325
    :cond_6
    invoke-direct {p0, p2}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->goRecord_card(Ljava/lang/String;)V

    goto :goto_1

    .line 334
    :cond_7
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->playType:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    sget-object v1, Lcom/dgiot/speedmonitoring/ui/live/PlayType;->CLOUD_STORAGE_INTERNAL_VIDEO:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    if-ne v0, v1, :cond_a

    if-eq p1, v3, :cond_9

    if-eq p1, v2, :cond_8

    .line 342
    invoke-direct {p0, p2}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->goRecord_yun2(Ljava/lang/String;)V

    goto :goto_1

    .line 339
    :cond_8
    invoke-direct {p0, p2}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->goRecord_yun1(Ljava/lang/String;)V

    goto :goto_1

    .line 336
    :cond_9
    invoke-direct {p0, p2}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->goRecord_card(Ljava/lang/String;)V

    goto :goto_1

    .line 345
    :cond_a
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->playType:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    sget-object v1, Lcom/dgiot/speedmonitoring/ui/live/PlayType;->CLOUD_STORAGE_VIDEO:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    if-ne v0, v1, :cond_d

    if-eq p1, v3, :cond_c

    if-eq p1, v2, :cond_b

    .line 353
    invoke-direct {p0, p2}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->goRecord_yun2(Ljava/lang/String;)V

    goto :goto_1

    .line 350
    :cond_b
    invoke-direct {p0, p2}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->goRecord_yun1(Ljava/lang/String;)V

    goto :goto_1

    .line 347
    :cond_c
    invoke-direct {p0, p2}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->goRecord_card(Ljava/lang/String;)V

    :cond_d
    :goto_1
    return-void
.end method

.method public final setBase(Lcom/dgiot/speedmonitoring/base/Base;)V
    .locals 1

    const-string v0, "base"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2226
    iput-object p1, p0, Lcom/dgiot/speedmonitoring/base/BaseActivity;->base:Lcom/dgiot/speedmonitoring/base/Base;

    return-void
.end method

.method public final setCenterPopup(Lcom/lxj/xpopup/core/BasePopupView;)V
    .locals 0

    .line 2183
    iput-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->centerPopup:Lcom/lxj/xpopup/core/BasePopupView;

    return-void
.end method

.method public final setChangeStreamUrl(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 725
    iput-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->changeStreamUrl:Ljava/lang/String;

    return-void
.end method

.method public final setChildFragments(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    iput-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->childFragments:Ljava/util/List;

    return-void
.end method

.method public final setDefinitionIcon([I)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 818
    iput-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->definitionIcon:[I

    return-void
.end method

.method public final setDefinitionLandIcon([I)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 817
    iput-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->definitionLandIcon:[I

    return-void
.end method

.method public final setDefinitionPopResult(Lcom/dgiot/speedmonitoring/ui/pop/BottomDefinitionSelectPopup$DefinitionType;)V
    .locals 4

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 728
    sget-object v0, Lcom/dgiot/speedmonitoring/ui/pop/BottomDefinitionSelectPopup$DefinitionType;->CQ:Lcom/dgiot/speedmonitoring/ui/pop/BottomDefinitionSelectPopup$DefinitionType;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 731
    :goto_0
    iget v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->curDefinition:I

    if-ne v0, p1, :cond_1

    return-void

    .line 734
    :cond_1
    invoke-direct {p0, p1}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->changeSingleCurDefinitionView(I)V

    .line 735
    invoke-direct {p0, p1}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->changeDefinition(I)V

    xor-int/2addr p1, v1

    .line 736
    iput p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->selectStream:I

    .line 737
    iput-boolean v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->changeStream:Z

    .line 738
    invoke-static {}, Lcom/dgiot/speedmonitoring/iot/DGIotClientManager;->getInstance()Lcom/dgiot/speedmonitoring/iot/DGIotClientManager;

    move-result-object p1

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->productSn:Ljava/lang/String;

    sget-object v1, Lcom/dgiot/speedmonitoring/repository/DGSocketRepository;->Companion:Lcom/dgiot/speedmonitoring/repository/DGSocketRepository$Companion;

    .line 739
    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->productSn:Ljava/lang/String;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v3, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->selectStream:I

    .line 738
    invoke-virtual {v1, v2, v3}, Lcom/dgiot/speedmonitoring/repository/DGSocketRepository$Companion;->getVideoStreamParam(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 740
    new-instance v2, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity$setDefinitionPopResult$1;

    invoke-direct {v2, p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity$setDefinitionPopResult$1;-><init>(Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;)V

    check-cast v2, Lcom/dgiot/speedmonitoring/iot/DGIotClientManager$CommandListener;

    .line 738
    invoke-virtual {p1, v0, v1, v2}, Lcom/dgiot/speedmonitoring/iot/DGIotClientManager;->send(Ljava/lang/String;Ljava/lang/String;Lcom/dgiot/speedmonitoring/iot/DGIotClientManager$CommandListener;)I

    return-void
.end method

.method public final setDeviceDirectionReversalValue([I)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 986
    iput-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->deviceDirectionReversalValue:[I

    return-void
.end method

.method public final setFirstLoad(Z)V
    .locals 0

    .line 1889
    iput-boolean p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->firstLoad:Z

    return-void
.end method

.method public final setFirstOpen(Z)V
    .locals 0

    .line 1702
    iput-boolean p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->firstOpen:Z

    return-void
.end method

.method public final setFrameSizeHeight(I)V
    .locals 0

    .line 1307
    iput p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->frameSizeHeight:I

    return-void
.end method

.method public final setFrameSizeWidth(I)V
    .locals 0

    .line 1306
    iput p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->frameSizeWidth:I

    return-void
.end method

.method public final setHideInternal(Z)V
    .locals 0

    .line 162
    iput-boolean p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isHideInternal:Z

    return-void
.end method

.method public final setHideSoundView(Z)V
    .locals 0

    .line 1370
    iput-boolean p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isHideSoundView:Z

    return-void
.end method

.method public final setInitMenuSelectDefaultIndex(Z)V
    .locals 0

    .line 1093
    iput-boolean p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->initMenuSelectDefaultIndex:Z

    return-void
.end method

.method public final setIsRunningOpenRecordPerm(Z)V
    .locals 0

    .line 1130
    iput-boolean p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isIsRunningOpenRecordPerm:Z

    return-void
.end method

.method public final setLastRxByte(J)V
    .locals 0

    .line 1262
    iput-wide p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->lastRxByte:J

    return-void
.end method

.method public final setLastTxBytes(J)V
    .locals 0

    .line 1263
    iput-wide p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->lastTxBytes:J

    return-void
.end method

.method public final setLed(I)V
    .locals 8

    .line 2001
    iget-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->openLedHint:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    if-ne p1, v1, :cond_0

    invoke-static {}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getLedDialogHint()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2002
    iput-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->openLedHint:Z

    .line 2003
    new-instance v0, Lcom/dgiot/speedmonitoring/util/XPopupUtil;

    invoke-direct {v0}, Lcom/dgiot/speedmonitoring/util/XPopupUtil;-><init>()V

    .line 2004
    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    iget-object v3, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v3, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    invoke-virtual {v3}, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v3

    const-string v4, "getRoot(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/view/View;

    .line 2005
    new-instance v4, Lcom/dgiot/speedmonitoring/ui/pop/CommonCenterPopup;

    .line 2006
    sget v5, Lcom/dgiot/speedmonitoring/R$string;->hint_agreement_title:I

    invoke-virtual {p0, v5}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2007
    sget v6, Lcom/dgiot/speedmonitoring/R$string;->hint_led_title:I

    invoke-virtual {p0, v6}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2008
    new-instance v7, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity$setLed$1;

    invoke-direct {v7, p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity$setLed$1;-><init>(Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;)V

    check-cast v7, Lcom/dgiot/speedmonitoring/ui/pop/CommonCenterPopup$CenterDialogClickListener;

    .line 2005
    invoke-direct {v4, v2, v5, v6, v7}, Lcom/dgiot/speedmonitoring/ui/pop/CommonCenterPopup;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/dgiot/speedmonitoring/ui/pop/CommonCenterPopup$CenterDialogClickListener;)V

    .line 2022
    sget v5, Lcom/dgiot/speedmonitoring/R$string;->deviceManager_restart_msg_ok:I

    invoke-virtual {p0, v5}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "#FF039BE5"

    .line 2023
    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    .line 2021
    invoke-virtual {v4, v5, v6}, Lcom/dgiot/speedmonitoring/ui/pop/CommonCenterPopup;->setRightClickViewText(Ljava/lang/String;I)Lcom/dgiot/speedmonitoring/ui/pop/CommonCenterPopup;

    move-result-object v4

    .line 2025
    sget v5, Lcom/dgiot/speedmonitoring/R$string;->hint_led_close:I

    invoke-virtual {p0, v5}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/dgiot/speedmonitoring/ui/pop/CommonCenterPopup;->showLeftClickView(Ljava/lang/String;)Lcom/dgiot/speedmonitoring/ui/pop/CommonCenterPopup;

    move-result-object v4

    const-string v5, "showLeftClickView(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lcom/lxj/xpopup/core/BasePopupView;

    .line 2003
    invoke-virtual {v0, v2, v3, v4}, Lcom/dgiot/speedmonitoring/util/XPopupUtil;->showCommonCenterPop(Landroid/content/Context;Landroid/view/View;Lcom/lxj/xpopup/core/BasePopupView;)Lcom/lxj/xpopup/core/BasePopupView;

    move-result-object v0

    iput-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->ledHintPop:Lcom/lxj/xpopup/core/BasePopupView;

    .line 2028
    :cond_0
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->ledCotrolHandler:Landroid/os/Handler;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->ledDelayClose:Ljava/lang/Runnable;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-ne p1, v1, :cond_1

    .line 2030
    sget-object v0, Lcom/dgiot/speedmonitoring/DGConfiguration;->ledOpenTimeMap:Ljava/util/HashMap;

    const-string v1, "ledOpenTimeMap"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/Map;

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->productSn:Ljava/lang/String;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2031
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->ledCotrolHandler:Landroid/os/Handler;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->ledDelayClose:Ljava/lang/Runnable;

    iget v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->ledCloseTime:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2033
    :cond_1
    invoke-direct {p0, p1}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->requestLedSet(I)V

    return-void
.end method

.method public final setMAdHintRechargePops(Lcom/lxj/xpopup/core/BasePopupView;)V
    .locals 0

    .line 3076
    iput-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->mAdHintRechargePops:Lcom/lxj/xpopup/core/BasePopupView;

    return-void
.end method

.method public final setMLivePlayerController(Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerController;)V
    .locals 0

    .line 704
    iput-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->mLivePlayerController:Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerController;

    return-void
.end method

.method public final setMNavigationBarHeight(I)V
    .locals 0

    .line 1086
    iput p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->mNavigationBarHeight:I

    return-void
.end method

.method public final setMYunPlayerController(Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerController;)V
    .locals 0

    .line 705
    iput-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->mYunPlayerController:Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerController;

    return-void
.end method

.method public final setMarqueeText(Landroid/widget/TextView;)V
    .locals 0

    .line 925
    iput-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->marqueeText:Landroid/widget/TextView;

    return-void
.end method

.method public final setMaxReLoadNum(I)V
    .locals 0

    .line 1718
    iput p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->maxReLoadNum:I

    return-void
.end method

.method public final setMuteView()V
    .locals 4

    const/4 v0, 0x0

    .line 2155
    iput-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->firstOpenSound:Z

    .line 2156
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->ilPlayControlBtn:Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlBtnBinding;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlBtnBinding;->ibMute:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2157
    invoke-direct {p0, v0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->setVoxSelect(Z)V

    .line 2158
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->nowPlayerController:Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerController;

    if-eqz v0, :cond_2

    const-string v0, "DGPlayerController status page mute()"

    .line 2159
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 2160
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->nowPlayerController:Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerController;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerController;->mute()V

    .line 2161
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->base:Lcom/dgiot/speedmonitoring/base/Base;

    invoke-virtual {v0}, Lcom/dgiot/speedmonitoring/base/Base;->dismissLoadDialog()V

    goto :goto_0

    .line 2164
    :cond_0
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/iot/demo/ipcview/util/MicUtils;->getVolume(Landroid/content/Context;)I

    move-result v1

    .line 2165
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DGPlayerController status page volume = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    if-nez v1, :cond_1

    .line 2169
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/dgiot/speedmonitoring/R$string;->video_hint_phone_speaker_off:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2167
    invoke-static {v0, v1}, Lcom/dgiot/speedmonitoring/util/ToastUtil;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 2171
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->showVolumeControl()V

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 2174
    invoke-direct {p0, v0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->setVoxSelect(Z)V

    .line 2175
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->nowPlayerController:Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerController;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->uiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    const-string v0, "DGPlayerController status page playSound()"

    .line 2176
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 2177
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->nowPlayerController:Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerController;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerController;->playSound()V

    .line 2178
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->base:Lcom/dgiot/speedmonitoring/base/Base;

    invoke-virtual {v0}, Lcom/dgiot/speedmonitoring/base/Base;->dismissLoadDialog()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final setOnlyMessageTimeInit(Z)V
    .locals 0

    .line 1701
    iput-boolean p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->onlyMessageTimeInit:Z

    return-void
.end method

.method public final setOnlyMessageTimeLoad(Z)V
    .locals 0

    .line 1700
    iput-boolean p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->onlyMessageTimeLoad:Z

    return-void
.end method

.method public final setOpenPage(Z)V
    .locals 0

    .line 562
    iput-boolean p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->openPage:Z

    return-void
.end method

.method public final setPlayControlImage(Z)V
    .locals 2

    .line 1362
    :try_start_0
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->ilPlayControlBtnRecordYun:Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlRecordYunBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlRecordYunBinding;->ibControl:Landroid/widget/ImageButton;

    if-eqz p1, :cond_0

    sget v1, Lcom/dgiot/speedmonitoring/R$drawable;->icon_record_start:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/dgiot/speedmonitoring/R$drawable;->icon_record_pause:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1363
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoRecordYun1Fragment:Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->setViewUnEnable(Z)V

    .line 1364
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoRecordYunFragment:Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->setViewUnEnable(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final setProductName(Ljava/lang/String;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->productName:Ljava/lang/String;

    return-void
.end method

.method public final setProgressIndicatorPosition(Z)V
    .locals 5

    .line 1441
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->productSn:Ljava/lang/String;

    invoke-static {v0}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getDeviceWindowNum(Ljava/lang/String;)I

    move-result v0

    .line 1442
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "videoLiveActivity_isThreeVideo:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1443
    iget-boolean v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isBadVideo:Z

    const/high16 v3, 0x42480000    # 50.0f

    const/4 v4, 0x0

    if-nez v1, :cond_4

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_2

    .line 1446
    :cond_0
    iget-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isLoadUpDownView:Z

    if-eqz v0, :cond_2

    .line 1447
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->progressIndicator:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_1

    .line 1448
    iget p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoPanelHeight:I

    goto :goto_0

    :cond_1
    move p1, v4

    .line 1449
    :goto_0
    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/common/util/utils/DensityUtils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    .line 1447
    invoke-virtual {v0, v4, p1, v4, v1}, Landroid/widget/ProgressBar;->setPadding(IIII)V

    goto :goto_3

    .line 1451
    :cond_2
    iget-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isThreeVideo:Z

    if-eqz v0, :cond_5

    .line 1452
    iget v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoPanelHeight:I

    mul-int/lit8 v1, v0, 0x3

    div-int/lit8 v1, v1, 0x6

    .line 1453
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "      "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1454
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->progressIndicator:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    move v1, v4

    :goto_1
    invoke-virtual {v0, v4, v1, v4, v4}, Landroid/widget/ProgressBar;->setPadding(IIII)V

    goto :goto_3

    .line 1444
    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->progressIndicator:Landroid/widget/ProgressBar;

    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/common/util/utils/DensityUtils;->dp2px(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {p1, v4, v4, v4, v0}, Landroid/widget/ProgressBar;->setPadding(IIII)V

    :cond_5
    :goto_3
    return-void
.end method

.method public final setReLoadPlayer(Z)V
    .locals 0

    .line 2534
    iput-boolean p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isReLoadPlayer:Z

    return-void
.end method

.method public final setRecordPermission(Z)V
    .locals 0

    .line 1129
    iput-boolean p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->recordPermission:Z

    return-void
.end method

.method public final setSelectStream(I)V
    .locals 0

    .line 722
    iput p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->selectStream:I

    return-void
.end method

.method public final setShowHintFlag(Z)V
    .locals 0

    .line 3078
    iput-boolean p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isShowHintFlag:Z

    return-void
.end method

.method public final setStartSpeaker(Z)V
    .locals 0

    .line 1128
    iput-boolean p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->startSpeaker:Z

    return-void
.end method

.method public final setUpTouchTime(J)V
    .locals 0

    .line 2390
    iput-wide p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->upTouchTime:J

    return-void
.end method

.method public final setVideoLiveClickControl(Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveClickControl;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoLiveClickControl:Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveClickControl;

    return-void
.end method

.method public final showAdMenu()V
    .locals 2

    .line 2980
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->ivAdFlag:Landroid/widget/ImageView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public final showPermissionHint()V
    .locals 5

    .line 1936
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->agreePopup:Lcom/lxj/xpopup/core/BasePopupView;

    if-nez v0, :cond_0

    const-string v0, "MyWebSocketClient \u5bf9\u8bb2:showPermissionHint"

    .line 1937
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1938
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/common/util/view/DisplayUtil;->getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 1939
    new-instance v2, Lcom/lxj/xpopup/XPopup$Builder;

    invoke-direct {v2, v0}, Lcom/lxj/xpopup/XPopup$Builder;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lxj/xpopup/XPopup$Builder;->hasShadowBg(Ljava/lang/Boolean;)Lcom/lxj/xpopup/XPopup$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/lxj/xpopup/XPopup$Builder;->dismissOnBackPressed(Ljava/lang/Boolean;)Lcom/lxj/xpopup/XPopup$Builder;

    move-result-object v2

    .line 1940
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lxj/xpopup/XPopup$Builder;->dismissOnTouchOutside(Ljava/lang/Boolean;)Lcom/lxj/xpopup/XPopup$Builder;

    move-result-object v2

    .line 1941
    iget-object v3, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v3, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    invoke-virtual {v3}, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v2, v3}, Lcom/lxj/xpopup/XPopup$Builder;->atView(Landroid/view/View;)Lcom/lxj/xpopup/XPopup$Builder;

    move-result-object v2

    .line 1942
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v2, v3}, Lcom/lxj/xpopup/XPopup$Builder;->popupWidth(I)Lcom/lxj/xpopup/XPopup$Builder;

    move-result-object v2

    .line 1943
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v2, v1}, Lcom/lxj/xpopup/XPopup$Builder;->popupHeight(I)Lcom/lxj/xpopup/XPopup$Builder;

    move-result-object v1

    .line 1945
    new-instance v2, Lcom/dgiot/speedmonitoring/ui/pop/PermissionHintPopup;

    .line 1947
    sget v3, Lcom/dgiot/speedmonitoring/R$string;->device_permission_hint3:I

    invoke-virtual {p0, v3}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1948
    new-instance v4, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity$showPermissionHint$1;

    invoke-direct {v4, p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity$showPermissionHint$1;-><init>(Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;)V

    check-cast v4, Lcom/dgiot/speedmonitoring/ui/pop/PermissionHintPopup$PrivacyStatementDialogListener;

    .line 1945
    invoke-direct {v2, v0, v3, v4}, Lcom/dgiot/speedmonitoring/ui/pop/PermissionHintPopup;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/dgiot/speedmonitoring/ui/pop/PermissionHintPopup$PrivacyStatementDialogListener;)V

    check-cast v2, Lcom/lxj/xpopup/core/BasePopupView;

    .line 1944
    invoke-virtual {v1, v2}, Lcom/lxj/xpopup/XPopup$Builder;->asCustom(Lcom/lxj/xpopup/core/BasePopupView;)Lcom/lxj/xpopup/core/BasePopupView;

    move-result-object v0

    .line 1939
    iput-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->agreePopup:Lcom/lxj/xpopup/core/BasePopupView;

    .line 1960
    :cond_0
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->agreePopup:Lcom/lxj/xpopup/core/BasePopupView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/lxj/xpopup/core/BasePopupView;->show()Lcom/lxj/xpopup/core/BasePopupView;

    return-void
.end method

.method public final showRecordMenuView(I)V
    .locals 1

    .line 1885
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->hideAdMenu()V

    .line 1886
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->vp2Menu3:Landroidx/viewpager2/widget/ViewPager2;

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(I)V

    return-void
.end method

.method public final showUpdateVersion(ILjava/lang/String;)V
    .locals 2

    const-string p1, "nowVersion"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2418
    invoke-static {}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getUpdateDeviceVersionHint()Z

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "showUpdateVersion:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 2419
    invoke-static {}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getUpdateDeviceVersionHint()Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->deviceRole:I

    if-nez p1, :cond_0

    goto :goto_0

    .line 2422
    :cond_0
    iget-boolean p1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isRequestNewDeviceInfo:Z

    if-nez p1, :cond_1

    .line 2423
    sget-object p1, Lcom/dgiot/speedmonitoring/repository/DGApiRepository;->INSTANCE:Lcom/dgiot/speedmonitoring/repository/DGApiRepository;

    new-instance v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity$showUpdateVersion$1;

    invoke-direct {v0, p0, p2}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity$showUpdateVersion$1;-><init>(Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;Ljava/lang/String;)V

    check-cast v0, Lcom/dgiot/speedmonitoring/http/ResponseCallBack;

    invoke-virtual {p1, p2, v0}, Lcom/dgiot/speedmonitoring/repository/DGApiRepository;->requestNewDeviceInfo(Ljava/lang/String;Lcom/dgiot/speedmonitoring/http/ResponseCallBack;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final showVolumeControl()V
    .locals 3

    :try_start_0
    const-string v0, "audio"

    .line 2144
    invoke-virtual {p0, v0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.media.AudioManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x3

    const/4 v2, 0x1

    .line 2145
    invoke-virtual {v0, v1, v2, v2}, Landroid/media/AudioManager;->adjustStreamVolume(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final showYunViewState(Z)V
    .locals 1

    .line 2880
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->llYunStateView:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public final startDeviceInfoService()V
    .locals 3

    .line 1507
    invoke-static {}, Lcom/dgiot/speedmonitoring/service/DeviceInfoService;->checkRun()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "startDeviceInfoService:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1508
    invoke-static {}, Lcom/dgiot/speedmonitoring/service/DeviceInfoService;->checkRun()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1509
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->productSn:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "startDeviceInfoService:checkRun"

    .line 1510
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1511
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1512
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->productSn:Ljava/lang/String;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1513
    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    check-cast v0, Ljava/util/List;

    invoke-static {v1, v0}, Lcom/dgiot/speedmonitoring/service/DeviceInfoService;->startActionDeviceInfo(Landroid/content/Context;Ljava/util/List;)V

    .line 1514
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->startTimer()V

    :cond_0
    return-void
.end method

.method public final startLoopTips()V
    .locals 3

    .line 927
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->marqueeText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 928
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 929
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->marqueeText:Landroid/widget/TextView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 930
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->marqueeText:Landroid/widget/TextView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    .line 931
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->marqueeText:Landroid/widget/TextView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 932
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->marqueeText:Landroid/widget/TextView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 933
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->marqueeText:Landroid/widget/TextView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 934
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->marqueeText:Landroid/widget/TextView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    .line 935
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->marqueeText:Landroid/widget/TextView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocusFromTouch()Z

    :cond_0
    return-void
.end method

.method public final startRetry()V
    .locals 4

    const/4 v0, 0x0

    .line 1775
    iput-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isCanAutoRetry:Z

    .line 1776
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->playType:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    sget-object v1, Lcom/dgiot/speedmonitoring/ui/live/PlayType;->LIVE_VIDEO:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    if-ne v0, v1, :cond_0

    const-string v0, "checkLiveVideoStreamRunnable:startRetry"

    .line 1777
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    const-string v0, "setLowPowerReLoadNumFlag = startRetry"

    .line 1779
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1780
    iput v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->lowPowerReLoadNumFlag:I

    .line 1781
    iput-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isRetryActive:Z

    .line 1783
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->checkLiveVideoStreamRunnable:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity$checkLiveVideoStreamRunnable$1;

    check-cast v0, Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->currentRetryTask:Ljava/lang/Runnable;

    .line 1784
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->uiHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-wide v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->delayRetryMillis:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public final startSpeaker()V
    .locals 5

    .line 1919
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->ilPlayControlBtn:Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlBtnBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlBtnBinding;->ibSpeaker:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->isSelected()Z

    move-result v0

    .line 1920
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MyWebSocketClient \u5bf9\u8bb2 startSpeaker:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1923
    invoke-direct {p0, v1, v1}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->controlVol(ZZ)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 1925
    invoke-virtual {p0, v0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->controlRecordingView(Z)V

    .line 1926
    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoLiveViewControl:Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v3, 0x4

    new-array v3, v3, [Landroid/view/View;

    .line 1927
    iget-object v4, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v4, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v4, v4, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->ilPlayControlBtn:Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlBtnBinding;

    iget-object v4, v4, Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlBtnBinding;->ibMute:Landroid/widget/ImageButton;

    aput-object v4, v3, v1

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->ilPlayControlBtn:Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlBtnBinding;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlBtnBinding;->ibDefinition:Landroid/widget/ImageButton;

    aput-object v1, v3, v0

    .line 1928
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->ilPlayControlBtn:Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlBtnBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlBtnBinding;->ibVox:Landroid/widget/ImageButton;

    const/4 v1, 0x2

    aput-object v0, v3, v1

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->ilPlayControlBtn:Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlBtnBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlBtnBinding;->ibRecharge:Landroid/widget/ImageButton;

    const/4 v1, 0x3

    aput-object v0, v3, v1

    .line 1926
    invoke-virtual {v2, v3}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->setViewEnable([Landroid/view/View;)V

    .line 1930
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->startRecord()V

    :goto_0
    return-void
.end method

.method public final startVideo()V
    .locals 7

    const-string v0, "time startVideo"

    .line 1635
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1636
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->nowPlayerController:Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerController;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "startVideo mdgPlayerController="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1637
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoLiveViewControl:Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->setVideoControlCanOperate(Z)V

    const/4 v0, 0x0

    .line 1638
    iput-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->playState:Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerControllerInterface$Status;

    .line 1639
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->delayCloseVideo()V

    .line 1640
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->initVideoControl()V

    .line 1641
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->nowPlayerController:Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerController;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "startVideo log="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1642
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->flGlsBig:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1643
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->glsBig:Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;

    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->nowPlayerController:Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerController;

    invoke-virtual {v0, v2}, Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;->setDgPlayerController(Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerController;)V

    .line 1644
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->flGlsSmall:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1645
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->glsSmall:Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;

    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->nowPlayerController:Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerController;

    invoke-virtual {v0, v2}, Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;->setDgPlayerController(Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerController;)V

    .line 1646
    iget-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isThreeVideo:Z

    const-wide/16 v2, 0x7d0

    if-eqz v0, :cond_0

    .line 1647
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->moveFragSmall3:Lcom/common/util/ui/MoveFrameLayout;

    invoke-virtual {v0, v1}, Lcom/common/util/ui/MoveFrameLayout;->setVisibility(I)V

    .line 1648
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->glsSmall3:Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;

    invoke-virtual {v0, v1}, Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;->setVisibility(I)V

    .line 1649
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->glsSmall3:Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;

    iget-object v4, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->nowPlayerController:Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerController;

    invoke-virtual {v0, v4}, Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;->setDgPlayerController(Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerController;)V

    .line 1650
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->uiHandler:Landroid/os/Handler;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v4, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity$$ExternalSyntheticLambda16;

    invoke-direct {v4, p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity$$ExternalSyntheticLambda16;-><init>(Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;)V

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1655
    :cond_0
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->nowPlayerController:Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerController;

    if-eqz v0, :cond_4

    .line 1656
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "startVideo open="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1657
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->uiHandler:Landroid/os/Handler;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v4, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity$$ExternalSyntheticLambda17;

    invoke-direct {v4, p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity$$ExternalSyntheticLambda17;-><init>(Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;)V

    const-wide/16 v5, 0xc8

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string v0, "parseRtmpAddress==>.2"

    .line 1658
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1659
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->playType:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "pageSource:getLiveVideoStreamParam "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1660
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->playType:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    iget-object v4, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->nowPlayerController:Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerController;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "startVideoReOpen = playType: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "    "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1661
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->playType:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    sget-object v4, Lcom/dgiot/speedmonitoring/ui/live/PlayType;->LIVE_VIDEO:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    if-ne v0, v4, :cond_1

    .line 1662
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->playType:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->productSn:Ljava/lang/String;

    invoke-static {v1}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getDeviceState(Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "startLiveVideoReOpen = playType: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    const-string v0, "checkLiveVideoStreamRunnable startVideo"

    .line 1663
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1664
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->startRetry()V

    const-string v0, "VideoLiveActivityLog:requestLiveVideoStreamParam:2"

    .line 1665
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1666
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->requestLiveVideoStreamParam()V

    goto :goto_0

    .line 1667
    :cond_1
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->playType:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    sget-object v4, Lcom/dgiot/speedmonitoring/ui/live/PlayType;->RECORD_VIDEO:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    if-ne v0, v4, :cond_2

    const-string v0, "reOpenRecordVideo_flag:7"

    .line 1669
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1670
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->reOpenRecordVideo()V

    goto :goto_0

    .line 1676
    :cond_2
    iget-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->onlyMessageTimeLoad:Z

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onlyMessageTimeLoad:request = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1677
    iget-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->onlyMessageTimeLoad:Z

    if-nez v0, :cond_3

    .line 1678
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->uiHandler:Landroid/os/Handler;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v1, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity$$ExternalSyntheticLambda18;-><init>(Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1694
    :cond_3
    iput-boolean v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->onlyMessageTimeLoad:Z

    :cond_4
    :goto_0
    return-void
.end method

.method public final stopPTZActionControl()V
    .locals 2

    const/4 v0, -0x1

    .line 943
    iput v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->currentAction:I

    .line 945
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->ptzScheduledHandle:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 946
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x0

    .line 947
    iput-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->ptzScheduledHandle:Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    return-void
.end method

.method public final stopRetry()V
    .locals 2

    const-string v0, "checkLiveVideoStreamRunnable:stopRetry"

    .line 1790
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1791
    iput-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isCanAutoRetry:Z

    .line 1792
    iput-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isRetryActive:Z

    const-string v0, "setLowPowerReLoadNumFlag = stopRetry"

    .line 1793
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1794
    iput v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->lowPowerReLoadNumFlag:I

    .line 1796
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->currentRetryTask:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->uiHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, 0x0

    .line 1797
    iput-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->currentRetryTask:Ljava/lang/Runnable;

    return-void
.end method

.method public final updateCardPauseState(Z)V
    .locals 2

    .line 1427
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->playType:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    sget-object v1, Lcom/dgiot/speedmonitoring/ui/live/PlayType;->RECORD_VIDEO:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    if-ne v0, v1, :cond_1

    .line 1428
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->ilPlayControlBtnRecord:Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlRecordBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlRecordBinding;->ibControl:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 1429
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->ilPlayControlBtnRecord:Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlRecordBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlRecordBinding;->ibControl:Landroid/widget/ImageButton;

    if-nez p1, :cond_0

    sget v1, Lcom/dgiot/speedmonitoring/R$drawable;->icon_record_pause:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/dgiot/speedmonitoring/R$drawable;->icon_record_start:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1431
    invoke-virtual {p0, p1}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->updateCardPauseStateText(Z)V

    .line 1433
    :cond_1
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->playType:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    sget-object v1, Lcom/dgiot/speedmonitoring/ui/live/PlayType;->CLOUD_STORAGE_INTERNAL_VIDEO:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->playType:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    sget-object v1, Lcom/dgiot/speedmonitoring/ui/live/PlayType;->CLOUD_STORAGE_VIDEO:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    if-ne v0, v1, :cond_4

    .line 1434
    :cond_2
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->ilPlayControlBtnRecordYun:Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlRecordYunBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlRecordYunBinding;->ibControl:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 1435
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->ilPlayControlBtnRecordYun:Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlRecordYunBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlRecordYunBinding;->ibControl:Landroid/widget/ImageButton;

    if-nez p1, :cond_3

    sget v1, Lcom/dgiot/speedmonitoring/R$drawable;->icon_record_pause:I

    goto :goto_1

    :cond_3
    sget v1, Lcom/dgiot/speedmonitoring/R$drawable;->icon_record_start:I

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1436
    invoke-virtual {p0, p1}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->updateYunPauseStateText(Z)V

    :cond_4
    return-void
.end method

.method public final updateCardPauseStateText(Z)V
    .locals 1

    .line 1415
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->ilPlayControlBtnRecord:Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlRecordBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlRecordBinding;->tvControl:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->getPauseStateText(Z)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final updateDelaySleepRunnable()V
    .locals 4

    .line 2401
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->llDeviceOffline:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->progressIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "updateDelaySleepRunnable"

    .line 2402
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 2403
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->uiHandler:Landroid/os/Handler;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->delaySleepRunnable:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity$DelaySleepRunnable;

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2404
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->uiHandler:Landroid/os/Handler;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->delaySleepRunnable:Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity$DelaySleepRunnable;

    check-cast v1, Ljava/lang/Runnable;

    const-wide/32 v2, 0x50910

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public final updatePlayType()V
    .locals 3

    .line 1283
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoRecordFragment:Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;

    if-eqz v0, :cond_0

    .line 1284
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->playState:Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerControllerInterface$Status;

    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->playType:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    invoke-virtual {v0, v1, v2}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->setVideoStatus(Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerControllerInterface$Status;Lcom/dgiot/speedmonitoring/ui/live/PlayType;)V

    .line 1286
    :cond_0
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoRecordYun1Fragment:Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;

    if-eqz v0, :cond_1

    .line 1287
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->playState:Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerControllerInterface$Status;

    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->playType:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    invoke-virtual {v0, v1, v2}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->setVideoStatus(Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerControllerInterface$Status;Lcom/dgiot/speedmonitoring/ui/live/PlayType;)V

    .line 1289
    :cond_1
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoRecordYunFragment:Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;

    if-eqz v0, :cond_2

    .line 1290
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->playState:Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerControllerInterface$Status;

    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->playType:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    invoke-virtual {v0, v1, v2}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordYunFragment;->setVideoStatus(Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerControllerInterface$Status;Lcom/dgiot/speedmonitoring/ui/live/PlayType;)V

    :cond_2
    return-void
.end method

.method public final updateRecordMenuPositionWhenClickMessage(ILjava/lang/String;)V
    .locals 3

    const-string v0, "msgTime"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 390
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoRecordFragment:Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/dgiot/speedmonitoring/ui/live/VideoRecordFragment;->isInitView()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "updateRecordMenuPositionWhenClickMessageLog:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    const/4 v0, 0x3

    .line 392
    invoke-virtual {p0, v0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->controlBottomMenuShow(I)V

    .line 393
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    check-cast v1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->indicatorView:Lcom/dgiot/speedmonitoring/ui/view/IndicatorView;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Lcom/dgiot/speedmonitoring/ui/view/IndicatorView;->setSelectState(I)V

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-gt v1, p1, :cond_2

    const/4 v2, 0x4

    if-ge p1, v2, :cond_2

    move v0, v1

    :cond_2
    if-eqz v0, :cond_4

    if-ne p1, v1, :cond_3

    .line 396
    invoke-direct {p0, p1, p2}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->changgeTab(ILjava/lang/String;)V

    goto :goto_1

    .line 399
    :cond_3
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->uiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_4

    new-instance v1, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity$$ExternalSyntheticLambda3;-><init>(Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;ILjava/lang/String;)V

    const-wide/16 p1, 0xc8

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    :goto_1
    return-void
.end method

.method public final updateVideoUrlTime()V
    .locals 5

    const-string/jumbo v0, "updateVideoUrlTime:start"

    .line 2098
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 2099
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->llDeviceOffline:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->progressIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    .line 2102
    :try_start_0
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->productSn:Ljava/lang/String;

    invoke-static {v0}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getRequestVideoUrlTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2104
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/CharSequence;

    new-instance v1, Lkotlin/text/Regex;

    const-string v2, ","

    invoke-direct {v1, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object v0

    .line 3106
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_2

    .line 3107
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    .line 3108
    :cond_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3109
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2104
    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    move v4, v2

    :goto_0
    if-nez v4, :cond_0

    .line 3110
    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/util/ListIterator;->nextIndex()I

    move-result v1

    add-int/2addr v1, v3

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 3114
    :cond_2
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_1
    check-cast v0, Ljava/util/Collection;

    new-array v1, v2, [Ljava/lang/String;

    .line 3116
    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 2105
    check-cast v0, [Ljava/lang/String;

    .line 2106
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->productSn:Ljava/lang/String;

    aget-object v0, v0, v3

    invoke-static {v1, v0}, Lcom/dgiot/speedmonitoring/DGConfiguration;->saveRequestVideoUrlTime(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string/jumbo v0, "updateVideoUrlTime:upVideoUrlTime"

    .line 2109
    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public final updateYunIbSpeakerState(Z)V
    .locals 2

    .line 1408
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->ilPlayControlBtnRecordYun:Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlRecordYunBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlRecordYunBinding;->ibControl:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 1409
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->ilPlayControlBtnRecordYun:Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlRecordYunBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlRecordYunBinding;->ibControl:Landroid/widget/ImageButton;

    if-nez p1, :cond_0

    sget v1, Lcom/dgiot/speedmonitoring/R$drawable;->icon_record_pause:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/dgiot/speedmonitoring/R$drawable;->icon_record_start:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1411
    invoke-virtual {p0, p1}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->updateYunPauseStateText(Z)V

    return-void
.end method

.method public final updateYunPauseStateText(Z)V
    .locals 1

    .line 1419
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->ilPlayControlBtnRecordYun:Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlRecordYunBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/LiveIpcIncludeMainControlRecordYunBinding;->tvControl:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->getPauseStateText(Z)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final videoRecordYunHideProgress()V
    .locals 3

    .line 2985
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->progressIndicator:Landroid/widget/ProgressBar;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const/16 v2, 0x8

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2986
    :goto_1
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->progressIndicator2:Landroid/widget/ProgressBar;

    goto :goto_2

    :cond_2
    move-object v0, v1

    :goto_2
    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2987
    :goto_3
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    if-eqz v0, :cond_4

    iget-object v1, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->progressIndicator3:Landroid/widget/ProgressBar;

    :cond_4
    if-nez v1, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :goto_4
    return-void
.end method

.method public final videoRecordYunShowLoadView()V
    .locals 4

    .line 2991
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->llDeviceOffline:Landroid/widget/LinearLayout;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const/16 v2, 0x8

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2992
    :goto_1
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->llDeviceSleep:Landroid/widget/LinearLayout;

    goto :goto_2

    :cond_2
    move-object v0, v1

    :goto_2
    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2993
    :goto_3
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->llDeviceSleep1:Landroid/widget/LinearLayout;

    goto :goto_4

    :cond_4
    move-object v0, v1

    :goto_4
    if-nez v0, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2994
    :goto_5
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    if-eqz v0, :cond_6

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->llDeviceSleep2:Landroid/widget/LinearLayout;

    goto :goto_6

    :cond_6
    move-object v0, v1

    :goto_6
    if-nez v0, :cond_7

    goto :goto_7

    :cond_7
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2995
    :goto_7
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    if-eqz v0, :cond_8

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->llDeviceSleep3:Landroid/widget/LinearLayout;

    goto :goto_8

    :cond_8
    move-object v0, v1

    :goto_8
    if-nez v0, :cond_9

    goto :goto_9

    :cond_9
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2996
    :goto_9
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    if-eqz v0, :cond_a

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->progressIndicator:Landroid/widget/ProgressBar;

    goto :goto_a

    :cond_a
    move-object v0, v1

    :goto_a
    if-nez v0, :cond_b

    goto :goto_b

    :cond_b
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2997
    :goto_b
    iget-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->screenIsVerticalScreen:Z

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isThreeVideo:Z

    if-eqz v0, :cond_e

    .line 2998
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    if-eqz v0, :cond_c

    iget-object v1, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->progressIndicator2:Landroid/widget/ProgressBar;

    :cond_c
    if-nez v1, :cond_d

    goto :goto_c

    :cond_d
    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_e
    :goto_c
    return-void
.end method

.method public final videoRecordYunStartPlay(Ljava/util/List;Lcom/dgiot/speedmonitoring/ui/live/PlayType;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/dgplayer/DGFileItem;",
            ">;",
            "Lcom/dgiot/speedmonitoring/ui/live/PlayType;",
            ")V"
        }
    .end annotation

    const-string v0, "dgFileItems"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playTypes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2937
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->llDeviceSleep:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->progressIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 2938
    :goto_1
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->playType:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "playYunState:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 2939
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->playType:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    sget-object v2, Lcom/dgiot/speedmonitoring/ui/live/PlayType;->LIVE_VIDEO:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    if-ne v1, v2, :cond_2

    if-eqz v0, :cond_2

    return-void

    .line 2943
    :cond_2
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->videoLiveViewControl:Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p2}, Lcom/dgiot/speedmonitoring/ui/live/viewcontrol/VideoLiveViewControl;->showControlMenu(Lcom/dgiot/speedmonitoring/ui/live/PlayType;)V

    .line 2944
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->nowPlayerController:Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerController;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v1, 0x15

    invoke-interface {v0, v1}, Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerController;->close(I)V

    .line 2945
    iput-object p2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->playType:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    .line 2946
    iput-object p2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->yunPlayType:Lcom/dgiot/speedmonitoring/ui/live/PlayType;

    .line 2949
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->initVideoControl()V

    .line 2951
    iget-object p2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->mYunPlayerController:Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerController;

    const-string v0, "null cannot be cast to non-null type com.dgiot.speedmonitoring.ui.live.controller.PlayerControllerFileManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerControllerFileManager;

    invoke-virtual {p2}, Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerControllerFileManager;->getDgPlayerController()Lcom/android/dgplayer/DGPlayFileController;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isSlideView -> videoRecordYunStartPlay mYunPlayerController = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 2952
    iget-object p2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    check-cast p2, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    if-eqz p2, :cond_3

    iget-object p2, p2, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->glsBig:Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;

    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->nowPlayerController:Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerController;

    invoke-virtual {p2, v0}, Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;->setDgPlayerController(Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerController;)V

    .line 2953
    :cond_3
    iget-object p2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    check-cast p2, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    if-eqz p2, :cond_4

    iget-object p2, p2, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->glsSmall:Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;

    if-eqz p2, :cond_4

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->nowPlayerController:Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerController;

    invoke-virtual {p2, v0}, Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;->setDgPlayerController(Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerController;)V

    .line 2954
    :cond_4
    iget-boolean p2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->isThreeVideo:Z

    if-eqz p2, :cond_5

    .line 2955
    iget-object p2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->binding:Landroidx/viewbinding/ViewBinding;

    check-cast p2, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;

    if-eqz p2, :cond_5

    iget-object p2, p2, Lcom/dgiot/speedmonitoring/databinding/ActivityVideoLiveBinding;->glsSmall3:Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;

    if-eqz p2, :cond_5

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->nowPlayerController:Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerController;

    invoke-virtual {p2, v0}, Lcom/dgiot/speedmonitoring/ui/live/SurfaceViewLive;->setDgPlayerController(Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerController;)V

    .line 2957
    :cond_5
    iget-object p2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->mYunPlayerController:Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerController;

    if-eqz p2, :cond_6

    invoke-interface {p2}, Lcom/dgiot/speedmonitoring/ui/live/controller/PlayerController;->clearVideoFiles()V

    :cond_6
    const-string p2, "isSlideView value: start open-2"

    .line 2958
    invoke-static {p2}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 2959
    iget-object p2, p0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;->uiHandler:Landroid/os/Handler;

    if-eqz p2, :cond_7

    new-instance v0, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity$$ExternalSyntheticLambda2;-><init>(Lcom/dgiot/speedmonitoring/ui/live/VideoLiveActivity;Ljava/util/List;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_7
    return-void
.end method
