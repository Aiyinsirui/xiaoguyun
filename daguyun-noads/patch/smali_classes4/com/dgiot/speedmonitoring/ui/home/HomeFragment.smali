.class public final Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;
.super Lcom/dgiot/speedmonitoring/base/BaseFragment;
.source "HomeFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dgiot/speedmonitoring/ui/home/HomeFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dgiot/speedmonitoring/base/BaseFragment<",
        "Lcom/dgiot/speedmonitoring/databinding/FragmentHomeBinding;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHomeFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HomeFragment.kt\ncom/dgiot/speedmonitoring/ui/home/HomeFragment\n+ 2 MaterialDialog.kt\ncom/afollestad/materialdialogs/MaterialDialog\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,2876:1\n362#2,4:2877\n1855#3,2:2881\n1855#3,2:2883\n1855#3:2885\n1855#3,2:2886\n1856#3:2888\n1855#3,2:2889\n1855#3,2:2891\n1855#3,2:2893\n1855#3,2:2895\n1864#3,3:2900\n1855#3,2:2903\n37#4,2:2897\n1#5:2899\n*S KotlinDebug\n*F\n+ 1 HomeFragment.kt\ncom/dgiot/speedmonitoring/ui/home/HomeFragment\n*L\n1040#1:2877,4\n1336#1:2881,2\n1366#1:2883,2\n1387#1:2885\n1389#1:2886,2\n1387#1:2888\n1671#1:2889,2\n1689#1:2891,2\n2014#1:2893,2\n2224#1:2895,2\n1456#1:2900,3\n1580#1:2903,2\n2232#1:2897,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00e7\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010%\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0010\u0015\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0013\n\u0002\u0010 \n\u0002\u0008)\n\u0002\u0018\u0002\n\u0002\u0008\u0015\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001[\u0018\u0000 \u00f3\u00012\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u00f3\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010x\u001a\u00020y2\u0006\u0010z\u001a\u00020{H\u0002J\u0006\u0010|\u001a\u00020yJ\u0008\u0010}\u001a\u00020yH\u0002J\u0008\u0010~\u001a\u00020yH\u0002J\u0008\u0010\u007f\u001a\u00020yH\u0002J\t\u0010\u0080\u0001\u001a\u00020yH\u0002J\t\u0010\u0081\u0001\u001a\u00020yH\u0002J\t\u0010\u0082\u0001\u001a\u00020yH\u0002J\t\u0010\u0083\u0001\u001a\u00020yH\u0002J\t\u0010\u0084\u0001\u001a\u00020yH\u0002J\t\u0010\u0085\u0001\u001a\u00020yH\u0002J\u001c\u0010\u0086\u0001\u001a\u00020y2\u0007\u0010\u0087\u0001\u001a\u00020_2\u0008\u0010\u0088\u0001\u001a\u00030\u0089\u0001H\u0002J\u0011\u0010\u008a\u0001\u001a\u00020y2\u0008\u0010\u008b\u0001\u001a\u00030\u008c\u0001J\u0012\u0010\u008d\u0001\u001a\u00020R2\u0007\u0010\u008e\u0001\u001a\u00020TH\u0002J\u0007\u0010\u008f\u0001\u001a\u00020\u0005J\u000b\u0010\u0090\u0001\u001a\u0004\u0018\u00010\u0002H\u0016J\t\u0010\u0091\u0001\u001a\u00020yH\u0002J\t\u0010\u0092\u0001\u001a\u00020yH\u0002J\t\u0010\u0093\u0001\u001a\u00020yH\u0002J\t\u0010\u0094\u0001\u001a\u00020yH\u0002J\t\u0010\u0095\u0001\u001a\u00020yH\u0002J\t\u0010\u0096\u0001\u001a\u00020yH\u0002J\u001d\u0010\u0096\u0001\u001a\u00020y2\u0007\u0010\u0097\u0001\u001a\u00020{2\t\u0010\u0098\u0001\u001a\u0004\u0018\u00010_H\u0002J\t\u0010\u0099\u0001\u001a\u00020yH\u0002J\u001d\u0010\u009a\u0001\u001a\u0016\u0012\u0005\u0012\u00030\u009c\u00010\u009b\u0001j\n\u0012\u0005\u0012\u00030\u009c\u0001`\u009d\u0001H\u0002J\u0007\u0010\u009e\u0001\u001a\u00020yJ\t\u0010\u009f\u0001\u001a\u00020yH\u0002J\t\u0010\u00a0\u0001\u001a\u00020yH\u0002J\u0012\u0010\u00a1\u0001\u001a\u00020y2\u0007\u0010\u0098\u0001\u001a\u00020_H\u0002J\t\u0010\u00a2\u0001\u001a\u00020yH\u0016J\t\u0010\u00a3\u0001\u001a\u00020)H\u0002J\t\u0010\u00a4\u0001\u001a\u00020yH\u0002J\t\u0010\u00a5\u0001\u001a\u00020yH\u0002J\u0007\u0010\u00a6\u0001\u001a\u00020yJ\t\u0010\u00a7\u0001\u001a\u00020yH\u0002J\t\u0010\u00a8\u0001\u001a\u00020yH\u0016J\t\u0010\u00a9\u0001\u001a\u00020yH\u0016J\t\u0010\u00aa\u0001\u001a\u00020yH\u0016J\t\u0010\u00ab\u0001\u001a\u00020yH\u0016J\t\u0010\u00ac\u0001\u001a\u00020yH\u0002J\u001b\u0010\u00ad\u0001\u001a\u00020y2\u0007\u0010\u00ae\u0001\u001a\u00020\u00052\u0007\u0010\u00af\u0001\u001a\u00020)H\u0002J\u001b\u0010\u00b0\u0001\u001a\t\u0012\u0004\u0012\u00020\u00160\u00b1\u00012\t\u0010\u00b2\u0001\u001a\u0004\u0018\u00010\u0005H\u0002J\u0012\u0010\u00b3\u0001\u001a\u00020y2\u0007\u0010\u00b4\u0001\u001a\u00020\u0005H\u0002J\t\u0010\u00b5\u0001\u001a\u00020yH\u0002J\t\u0010\u00b6\u0001\u001a\u00020yH\u0002J\u001b\u0010\u00b7\u0001\u001a\u00020y2\u0007\u0010\u00b8\u0001\u001a\u00020\u00052\u0007\u0010\u00b9\u0001\u001a\u00020TH\u0002J\t\u0010\u00ba\u0001\u001a\u00020yH\u0002J\u0007\u0010\u00bb\u0001\u001a\u00020yJ\u0012\u0010\u00bc\u0001\u001a\u00020y2\u0007\u0010\u00bd\u0001\u001a\u00020\u0005H\u0002J\u0014\u0010\u00be\u0001\u001a\u00020y2\t\u0010\u00b8\u0001\u001a\u0004\u0018\u00010\u0005H\u0002J\u0014\u0010\u00bf\u0001\u001a\u00020y2\t\u0010\u00b8\u0001\u001a\u0004\u0018\u00010\u0005H\u0002J\u0012\u0010\u00c0\u0001\u001a\u00020y2\u0007\u0010\u00b8\u0001\u001a\u00020\u0005H\u0002J\t\u0010\u00c1\u0001\u001a\u00020yH\u0002J\t\u0010\u00c2\u0001\u001a\u00020yH\u0002J\u0007\u0010\u00c3\u0001\u001a\u00020yJ\u001b\u0010\u00c4\u0001\u001a\u00020y2\u0007\u0010\u00c5\u0001\u001a\u00020)2\u0007\u0010\u00c6\u0001\u001a\u00020TH\u0002J\t\u0010\u00c7\u0001\u001a\u00020yH\u0002J\u0007\u0010\u00c8\u0001\u001a\u00020yJ\u001b\u0010\u00c9\u0001\u001a\u00020y2\u0007\u0010\u00b8\u0001\u001a\u00020\u00052\u0007\u0010\u00ca\u0001\u001a\u00020\u0005H\u0002J\t\u0010\u00cb\u0001\u001a\u00020yH\u0002J\u0012\u0010\u00cc\u0001\u001a\u00020y2\u0007\u0010\u00cd\u0001\u001a\u00020)H\u0002J\t\u0010\u00ce\u0001\u001a\u00020yH\u0002J\t\u0010\u00cf\u0001\u001a\u00020yH\u0002J\u0012\u0010\u00d0\u0001\u001a\u00020y2\u0007\u0010\u00d1\u0001\u001a\u00020\u0005H\u0002J\t\u0010\u00d2\u0001\u001a\u00020yH\u0002J\u0012\u0010\u00d3\u0001\u001a\u00020y2\u0007\u0010\u00b8\u0001\u001a\u00020\u0005H\u0002J\t\u0010\u00d4\u0001\u001a\u00020yH\u0002J$\u0010\u00d5\u0001\u001a\u00020y2\u0007\u0010\u00d6\u0001\u001a\u00020\u00052\u0007\u0010\u00ae\u0001\u001a\u00020\u00052\u0007\u0010\u00d7\u0001\u001a\u00020TH\u0002J\t\u0010\u00d8\u0001\u001a\u00020yH\u0002J\u0013\u0010\u00d9\u0001\u001a\u00020y2\u0008\u0010\u00da\u0001\u001a\u00030\u00db\u0001H\u0002J\t\u0010\u00dc\u0001\u001a\u00020yH\u0002J\t\u0010\u00dd\u0001\u001a\u00020yH\u0002J\u0012\u0010\u00de\u0001\u001a\u00020y2\t\u0010\u00b8\u0001\u001a\u0004\u0018\u00010\u0005J\u001d\u0010\u00df\u0001\u001a\u00020y2\t\u0010\u00e0\u0001\u001a\u0004\u0018\u00010\u00052\t\u0010\u00b8\u0001\u001a\u0004\u0018\u00010\u0005J\t\u0010\u00e1\u0001\u001a\u00020yH\u0002J\t\u0010\u00e2\u0001\u001a\u00020yH\u0002J\u001d\u0010\u00e3\u0001\u001a\u00020y2\t\u0010\u00b8\u0001\u001a\u0004\u0018\u00010\u00052\u0007\u0010\u00e4\u0001\u001a\u00020\u0005H\u0002J\t\u0010\u00e5\u0001\u001a\u00020yH\u0002J\u001b\u0010\u00e6\u0001\u001a\u00020y2\u0007\u0010\u00b8\u0001\u001a\u00020\u00052\u0007\u0010\u00e7\u0001\u001a\u00020TH\u0002J\t\u0010\u00e8\u0001\u001a\u00020yH\u0002J\t\u0010\u00e9\u0001\u001a\u00020yH\u0002J4\u0010\u00ea\u0001\u001a\u000b\u0012\u0005\u0012\u00030\u009c\u0001\u0018\u00010\u00152\u000e\u0010\u00eb\u0001\u001a\t\u0012\u0005\u0012\u00030\u009c\u00010\u00152\u0010\u0010\u00ec\u0001\u001a\u000b\u0012\u0005\u0012\u00030\u009c\u0001\u0018\u00010\u0015H\u0002J\u001b\u0010\u00ed\u0001\u001a\u00020y2\u0007\u0010\u00ee\u0001\u001a\u00020\u00052\u0007\u0010\u00ef\u0001\u001a\u00020\u0005H\u0002J\u001c\u0010\u00f0\u0001\u001a\u00020y2\u0008\u0010\u0088\u0001\u001a\u00030\u00f1\u00012\u0007\u0010\u00f2\u0001\u001a\u00020\u0005H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082D\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR\u001a\u0010\u001c\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u001dX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u001e\u001a\u0004\u0018\u00010\u001fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#R\u001a\u0010$\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u001dX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020&X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\'\u001a\u00020\u0005X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010(\u001a\u00020)X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010*\u001a\u0004\u0018\u00010\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008+\u0010\u0019\"\u0004\u0008,\u0010\u001bR\u000e\u0010-\u001a\u00020.X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010/\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u00100\u001a\u00020)X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00081\u00102\"\u0004\u00083\u00104R\u001a\u00105\u001a\u00020)X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00086\u00102\"\u0004\u00087\u00104R\u001a\u00108\u001a\u00020)X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00089\u00102\"\u0004\u0008:\u00104R\u000e\u0010;\u001a\u00020<X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010=\u001a\u00020)X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010>\u001a\u00020)X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008>\u00102\"\u0004\u0008?\u00104R\u001a\u0010@\u001a\u00020)X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008@\u00102\"\u0004\u0008A\u00104R\u001a\u0010B\u001a\u00020)X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008B\u00102\"\u0004\u0008C\u00104R\u001a\u0010D\u001a\u00020)X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008D\u00102\"\u0004\u0008E\u00104R\u001a\u0010F\u001a\u00020)X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008F\u00102\"\u0004\u0008G\u00104R\u001a\u0010H\u001a\u00020)X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008H\u00102\"\u0004\u0008I\u00104R\u001a\u0010J\u001a\u00020)X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008J\u00102\"\u0004\u0008K\u00104R\u001a\u0010L\u001a\u00020)X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008L\u00102\"\u0004\u0008M\u00104R\u000e\u0010N\u001a\u00020OX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010P\u001a\u00020)X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010Q\u001a\u00020RX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010S\u001a\u00020TX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010U\u001a\u00020RX\u0082D\u00a2\u0006\u0002\n\u0000R\u001c\u0010V\u001a\u0004\u0018\u00010\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008W\u0010\u0019\"\u0004\u0008X\u0010\u001bR\u000e\u0010Y\u001a\u00020.X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010Z\u001a\u00020[X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\\R\u001b\u0010]\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010_0^\u00a2\u0006\n\n\u0002\u0010b\u001a\u0004\u0008`\u0010aR\u000e\u0010c\u001a\u00020)X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010d\u001a\u0004\u0018\u00010\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008e\u0010\u0019\"\u0004\u0008f\u0010\u001bR\u001c\u0010g\u001a\u0004\u0018\u00010\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008h\u0010\u0019\"\u0004\u0008i\u0010\u001bR\u001c\u0010j\u001a\u0004\u0018\u00010kX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008l\u0010m\"\u0004\u0008n\u0010oR\u001a\u0010p\u001a\u00020)X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008q\u00102\"\u0004\u0008r\u00104R\u001a\u0010s\u001a\u00020TX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008t\u0010u\"\u0004\u0008v\u0010w\u00a8\u0006\u00f4\u0001"
    }
    d2 = {
        "Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;",
        "Lcom/dgiot/speedmonitoring/base/BaseFragment;",
        "Lcom/dgiot/speedmonitoring/databinding/FragmentHomeBinding;",
        "()V",
        "TAG",
        "",
        "adHeadView",
        "Landroid/view/View;",
        "getAdHeadView",
        "()Landroid/view/View;",
        "setAdHeadView",
        "(Landroid/view/View;)V",
        "adNativeAd",
        "agreePopup",
        "Lcom/lxj/xpopup/core/BasePopupView;",
        "autoTask",
        "Ljava/lang/Runnable;",
        "bannerAdapter",
        "Lcom/dgiot/speedmonitoring/adapter/BannerAdapter;",
        "bannerList",
        "",
        "Lcom/dgiot/speedmonitoring/bean/BannerItem;",
        "centerPopup",
        "getCenterPopup",
        "()Lcom/lxj/xpopup/core/BasePopupView;",
        "setCenterPopup",
        "(Lcom/lxj/xpopup/core/BasePopupView;)V",
        "deviceDbm",
        "",
        "deviceListResult",
        "Lcom/dgiot/speedmonitoring/ui/home/HomePageState$GetDeviceListResult;",
        "getDeviceListResult",
        "()Lcom/dgiot/speedmonitoring/ui/home/HomePageState$GetDeviceListResult;",
        "setDeviceListResult",
        "(Lcom/dgiot/speedmonitoring/ui/home/HomePageState$GetDeviceListResult;)V",
        "deviceStatus",
        "deviceVideoAdapter",
        "Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;",
        "expirationTimeFlag",
        "firstLoad",
        "",
        "gifHintPop",
        "getGifHintPop",
        "setGifHintPop",
        "handlerBanner",
        "Landroid/os/Handler;",
        "hasCheckTfSnStr",
        "hasGetSubdeviceState",
        "getHasGetSubdeviceState",
        "()Z",
        "setHasGetSubdeviceState",
        "(Z)V",
        "hasLoadDeviceVideoFileService",
        "getHasLoadDeviceVideoFileService",
        "setHasLoadDeviceVideoFileService",
        "hasLoadVideoFileDownService",
        "getHasLoadVideoFileDownService",
        "setHasLoadVideoFileDownService",
        "homeViewModel",
        "Lcom/dgiot/speedmonitoring/ui/home/HomeViewModel;",
        "isFragmentForeground",
        "isLoadAd",
        "setLoadAd",
        "isLoadInterstitialAd",
        "setLoadInterstitialAd",
        "isNeedReshowInterstitial",
        "setNeedReshowInterstitial",
        "isRefreshYunInfo",
        "setRefreshYunInfo",
        "isResume",
        "setResume",
        "isShowGifHintLogic",
        "setShowGifHintLogic",
        "isShowHint",
        "setShowHint",
        "isShowHintFlag",
        "setShowHintFlag",
        "levelPic",
        "",
        "loadPushUserRecord",
        "loadTime",
        "",
        "loadYunInfoNum",
        "",
        "loopTime",
        "mAdHintRechargePops",
        "getMAdHintRechargePops",
        "setMAdHintRechargePops",
        "mHandler",
        "mesBroadcastReceiver",
        "com/dgiot/speedmonitoring/ui/home/HomeFragment$mesBroadcastReceiver$1",
        "Lcom/dgiot/speedmonitoring/ui/home/HomeFragment$mesBroadcastReceiver$1;",
        "nativeAdList",
        "",
        "getNativeAdList",
        "()[Ljava/lang/Object;",
        "[Ljava/lang/Object;",
        "needHideAd",
        "noTFHintPop",
        "getNoTFHintPop",
        "setNoTFHintPop",
        "notePopupView",
        "getNotePopupView",
        "setNotePopupView",
        "notificationsDialog",
        "Lcom/afollestad/materialdialogs/MaterialDialog;",
        "getNotificationsDialog",
        "()Lcom/afollestad/materialdialogs/MaterialDialog;",
        "setNotificationsDialog",
        "(Lcom/afollestad/materialdialogs/MaterialDialog;)V",
        "showUpdateNameDialog",
        "getShowUpdateNameDialog",
        "setShowUpdateNameDialog",
        "upLoadListNum",
        "getUpLoadListNum",
        "()I",
        "setUpLoadListNum",
        "(I)V",
        "addAdViewToLayout",
        "",
        "adView",
        "checkBlueDevicePermission",
        "checkHintAdWhenBindDevice",
        "checkNotificationPer",
        "checkNotificationStateDialog",
        "checkNotificationStateFromSetting",
        "checkUpdate",
        "cleanLog",
        "cleanVideoFile",
        "clickGoContacts",
        "closeInfoAd",
        "createBottomAdView",
        "nativeAd",
        "atNative",
        "deleteRecursive",
        "fileOrDirectory",
        "Ljava/io/File;",
        "getDelayTime",
        "index",
        "getMobileType",
        "getViewBinding",
        "goAdRecharge",
        "goAiWeb",
        "goCheckPermission",
        "goCustomerNewWeb",
        "goWebSiteCheckUpdate",
        "initAd",
        "mATNativeAdView",
        "mNativeAd",
        "initAdRechargeHintViewClick",
        "initData",
        "Ljava/util/ArrayList;",
        "Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;",
        "Lkotlin/collections/ArrayList;",
        "initJGTopAd",
        "initLoad",
        "initLoadView",
        "initNativeAdList",
        "initialize",
        "isNotificationEnabled",
        "loadAd",
        "loadDevice",
        "loadJGTopAd",
        "loadTopSlideView",
        "onDestroyView",
        "onPause",
        "onResume",
        "onStop",
        "openNotificationSetting",
        "openNotificationsDialog",
        "content",
        "isSelect",
        "parseBannerList",
        "",
        "rawData",
        "parseGoWeiXinContacts",
        "raw",
        "preploadAd",
        "refreshBottomAd",
        "refreshInfo",
        "sn",
        "size",
        "refreshNativeAdView",
        "requestAd",
        "requestAllUpdateDeviceToken",
        "nowToken",
        "requestCardS",
        "requestCardState",
        "requestCleanDeviceTokenBySn",
        "requestGetAdState",
        "requestGifList",
        "requestIsServiceActivate",
        "requestNotificationState",
        "isOpen",
        "type",
        "requestPushUserRecord",
        "requestSystemNote",
        "requestUpdateDeviceName",
        "nickName",
        "runSecretKey",
        "setNotificationState",
        "open",
        "setupBanner",
        "showAdRechargeHint",
        "showGifDailog",
        "url",
        "showGifHintLogic",
        "showHintUnOnlineDialog",
        "showInterstitial",
        "showNote",
        "title",
        "canOperate",
        "showPermissionHint",
        "showYdInterstitial",
        "mInterstitialAd",
        "startAutoScroll",
        "stopAutoScroll",
        "unBindDevice",
        "unBindShareDevice",
        "iotId",
        "updateAdData",
        "updateAdRechargeHintView",
        "updateCardExpirationTime",
        "time",
        "updateDeviceNetDBM",
        "updateDevicePower",
        "bat",
        "updateDeviceStatus",
        "updateDeviceToken",
        "updateListUpState",
        "oldData",
        "newData",
        "updateOnlineState",
        "deviceSn",
        "status",
        "uploadAdPic",
        "flag",
        "Companion",
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
.field public static final Companion:Lcom/dgiot/speedmonitoring/ui/home/HomeFragment$Companion;

.field private static canRequestInterAd:Z


# instance fields
.field private final TAG:Ljava/lang/String;

.field private adHeadView:Landroid/view/View;


.field private agreePopup:Lcom/lxj/xpopup/core/BasePopupView;

.field private autoTask:Ljava/lang/Runnable;

.field private bannerAdapter:Lcom/dgiot/speedmonitoring/adapter/BannerAdapter;

.field private bannerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dgiot/speedmonitoring/bean/BannerItem;",
            ">;"
        }
    .end annotation
.end field

.field private centerPopup:Lcom/lxj/xpopup/core/BasePopupView;

.field private deviceDbm:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private deviceListResult:Lcom/dgiot/speedmonitoring/ui/home/HomePageState$GetDeviceListResult;

.field private deviceStatus:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private deviceVideoAdapter:Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;

.field private final expirationTimeFlag:Ljava/lang/String;

.field private firstLoad:Z

.field private gifHintPop:Lcom/lxj/xpopup/core/BasePopupView;

.field private final handlerBanner:Landroid/os/Handler;

.field private hasCheckTfSnStr:Ljava/lang/String;

.field private hasGetSubdeviceState:Z

.field private hasLoadDeviceVideoFileService:Z

.field private hasLoadVideoFileDownService:Z

.field private homeViewModel:Lcom/dgiot/speedmonitoring/ui/home/HomeViewModel;

.field private isFragmentForeground:Z

.field private isLoadAd:Z

.field private isLoadInterstitialAd:Z

.field private isNeedReshowInterstitial:Z

.field private isRefreshYunInfo:Z

.field private isResume:Z

.field private isShowGifHintLogic:Z

.field private isShowHint:Z

.field private isShowHintFlag:Z

.field private final levelPic:[I

.field private loadPushUserRecord:Z

.field private loadTime:J

.field private loadYunInfoNum:I

.field private final loopTime:J

.field private mAdHintRechargePops:Lcom/lxj/xpopup/core/BasePopupView;

.field private mHandler:Landroid/os/Handler;

.field private mesBroadcastReceiver:Lcom/dgiot/speedmonitoring/ui/home/HomeFragment$mesBroadcastReceiver$1;

.field private final nativeAdList:[Ljava/lang/Object;

.field private needHideAd:Z

.field private noTFHintPop:Lcom/lxj/xpopup/core/BasePopupView;

.field private notePopupView:Lcom/lxj/xpopup/core/BasePopupView;

.field private notificationsDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

.field private showUpdateNameDialog:Z

.field private upLoadListNum:I


# direct methods
.method public static synthetic $r8$lambda$AMC_Jno8JdR9f5rMlImfGctbND4(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->initialize$lambda$11(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DsLrSa8EMaryRcgx7FPoFFj9JtA(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->initNativeAdList$lambda$14(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$H864vTSdUUOo0Ff9-mkw1TVmOiI(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->loadDevice$lambda$35$lambda$34(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JQaZheEnJCcpbhHCb8hzaAgXri0(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->createBottomAdView$lambda$49(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Kn1ESMuDJO-10gUcAYRcXQuz5Qk(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->initAdRechargeHintViewClick$lambda$47(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LopzJNDQCzV6jSEFUj8fiuk0_cA(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->initialize$lambda$6(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LrWw_LbP3urNga1DWOqZWC6N6IQ(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->initialize$lambda$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MbSP5VHHPmlN1BQV5IzymDlvkPI(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->initialize$lambda$8(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MjWy2LVWqLXs2l6kfZsow3AgfXg()V
    .locals 0

    invoke-static {}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->initialize$lambda$11$lambda$10()V

    return-void
.end method

.method public static synthetic $r8$lambda$NasgACy9QlrImvqH_q5qbIcqsJM(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->preploadAd$lambda$15(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PiEYXcwSpybz8eqhgRDJ0UNebFA(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->loadDevice$lambda$35$lambda$30(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QFXZ4RBK1S2niDBeWZNBgK-qS4I(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->initNativeAdList$lambda$13(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SVygdpV2vuMedNNbQacPg7yyI7w(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->initAdRechargeHintViewClick$lambda$46(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$X7xoGHXJr4l4L55w6uBixXx9u4U(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->initialize$lambda$3(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ze3bC9soRQXAk0sT8Oc87aqIPG8(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->checkNotificationStateDialog$lambda$22(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$a1eRzRcXidqUlcY4rVVEUFlwrRM(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->initialize$lambda$9(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$d5iyVmcAlG0ibFogqJa6IDsgJyo(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;Lcom/dgiot/speedmonitoring/ui/home/HomePageState$GetDeviceListResult;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->loadDevice$lambda$35(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;Lcom/dgiot/speedmonitoring/ui/home/HomePageState$GetDeviceListResult;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eK4zbPEb0FRaVlXRBWCj_FmYMD8(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->initialize$lambda$5(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eh8REoL3wnVZ7vAl5loej81kUlU(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->createBottomAdView$lambda$48(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ewzaMnnV0IPGYGguJ78OLarzD30(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->initialize$lambda$12(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hQAbC97IhioRLDY7IaVWxmxNui4(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->initialize$lambda$7(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$l8cXfXGyz-axpJngQ1xYTb2CLlw(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->openNotificationsDialog$lambda$18(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nLeZNNhHqb3Lc6tO7fJ4IfLL9es(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->openNotificationsDialog$lambda$17(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qj_4IJ9lE0n_1VoNAZ5IKAR0rxg(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;Lkotlin/jvm/internal/Ref$ObjectRef;ILjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->goAdRecharge$lambda$45(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;Lkotlin/jvm/internal/Ref$ObjectRef;ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$roOUCc2fMYcUBDx6DQSt5UOPTnA(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->loadDevice$lambda$35$lambda$32(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yp5anpbePcczSMxz6Q_lJNKapI8(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->cleanVideoFile$lambda$1(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->Companion:Lcom/dgiot/speedmonitoring/ui/home/HomeFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 145
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/base/BaseFragment;-><init>()V

    const-string v0, "HomeFragmentFlag:"

    .line 147
    iput-object v0, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    .line 151
    iput-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->firstLoad:Z

    .line 153
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v1, Ljava/util/Map;

    iput-object v1, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->deviceStatus:Ljava/util/Map;

    .line 155
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v1, Ljava/util/Map;

    iput-object v1, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->deviceDbm:Ljava/util/Map;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    aput-object v3, v1, v0

    const/4 v0, 0x2

    aput-object v3, v1, v0

    .line 795
    iput-object v1, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->nativeAdList:[Ljava/lang/Object;

    const-string v0, "1999-07-31T19:17:38"

    .line 1332
    iput-object v0, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->expirationTimeFlag:Ljava/lang/String;

    const/4 v0, -0x1

    .line 1663
    iput v0, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->upLoadListNum:I

    .line 1827
    new-instance v0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment$mesBroadcastReceiver$1;

    invoke-direct {v0, p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment$mesBroadcastReceiver$1;-><init>(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;)V

    iput-object v0, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->mesBroadcastReceiver:Lcom/dgiot/speedmonitoring/ui/home/HomeFragment$mesBroadcastReceiver$1;

    .line 2006
    sget v0, Lcom/dgiot/speedmonitoring/R$drawable;->icon_signal4g_1:I

    .line 2007
    sget v1, Lcom/dgiot/speedmonitoring/R$drawable;->icon_signal4g_2:I

    .line 2008
    sget v2, Lcom/dgiot/speedmonitoring/R$drawable;->icon_signal4g_3:I

    .line 2009
    sget v3, Lcom/dgiot/speedmonitoring/R$drawable;->icon_signal4g_4:I

    .line 2010
    sget v4, Lcom/dgiot/speedmonitoring/R$drawable;->icon_signal4g:I

    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    .line 2005
    iput-object v0, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->levelPic:[I

    .line 2031
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->mHandler:Landroid/os/Handler;

    const-string v0, ""

    .line 2032
    iput-object v0, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->hasCheckTfSnStr:Ljava/lang/String;

    .line 2762
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->bannerList:Ljava/util/List;

    .line 2765
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->handlerBanner:Landroid/os/Handler;

    const-wide/16 v0, 0x1388

    .line 2767
    iput-wide v0, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->loopTime:J

    return-void
.end method

.method public static final synthetic access$checkNotificationStateDialog(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;)V
    .locals 0

    .line 145
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->checkNotificationStateDialog()V

    return-void
.end method

.method public static final synthetic access$clickGoContacts(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;)V
    .locals 0

    .line 145
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->clickGoContacts()V

    return-void
.end method

.method public static final synthetic access$closeInfoAd(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;)V
    .locals 0

    .line 145
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->closeInfoAd()V

    return-void
.end method

.method public static final synthetic access$getAgreePopup$p(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;)Lcom/lxj/xpopup/core/BasePopupView;
    .locals 0

    .line 145
    iget-object p0, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->agreePopup:Lcom/lxj/xpopup/core/BasePopupView;

    return-object p0
.end method

.method public static final synthetic access$getBannerList$p(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;)Ljava/util/List;
    .locals 0

    .line 145
    iget-object p0, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->bannerList:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getBase(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;)Lcom/dgiot/speedmonitoring/base/Base;
    .locals 0

    .line 145
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->getBase()Lcom/dgiot/speedmonitoring/base/Base;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getBinding(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;)Lcom/dgiot/speedmonitoring/databinding/FragmentHomeBinding;
    .locals 0

    .line 145
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/dgiot/speedmonitoring/databinding/FragmentHomeBinding;

    return-object p0
.end method

.method public static final synthetic access$getCanRequestInterAd$cp()Z
    .locals 1

    .line 145
    sget-boolean v0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->canRequestInterAd:Z

    return v0
.end method

.method public static final synthetic access$getDeviceDbm$p(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;)Ljava/util/Map;
    .locals 0

    .line 145
    iget-object p0, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->deviceDbm:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic access$getDeviceStatus$p(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;)Ljava/util/Map;
    .locals 0

    .line 145
    iget-object p0, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->deviceStatus:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic access$getDeviceVideoAdapter$p(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;)Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;
    .locals 0

    .line 145
    iget-object p0, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->deviceVideoAdapter:Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;

    return-object p0
.end method

.method public static final synthetic access$getExpirationTimeFlag$p(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;)Ljava/lang/String;
    .locals 0

    .line 145
    iget-object p0, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->expirationTimeFlag:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getHandlerBanner$p(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;)Landroid/os/Handler;
    .locals 0

    .line 145
    iget-object p0, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->handlerBanner:Landroid/os/Handler;

    return-object p0
.end method

.method public static final synthetic access$getLoadYunInfoNum$p(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;)I
    .locals 0

    .line 145
    iget p0, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->loadYunInfoNum:I

    return p0
.end method

.method public static final synthetic access$getLoopTime$p(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;)J
    .locals 2

    .line 145
    iget-wide v0, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->loopTime:J

    return-wide v0
.end method

.method public static final synthetic access$getMHandler$p(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;)Landroid/os/Handler;
    .locals 0

    .line 145
    iget-object p0, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static final synthetic access$getTAG$p(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;)Ljava/lang/String;
    .locals 0

    .line 145
    iget-object p0, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$goAdRecharge(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;)V
    .locals 0

    .line 145
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->goAdRecharge()V

    return-void
.end method

.method public static final synthetic access$goAiWeb(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;)V
    .locals 0

    .line 145
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->goAiWeb()V

    return-void
.end method

.method public static final synthetic access$goCheckPermission(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;)V
    .locals 0

    .line 145
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->goCheckPermission()V

    return-void
.end method

.method public static final synthetic access$goCustomerNewWeb(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;)V
    .locals 0

    .line 145
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->goCustomerNewWeb()V

    return-void
.end method

.method public static final synthetic access$goWebSiteCheckUpdate(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;)V
    .locals 0

    .line 145
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->goWebSiteCheckUpdate()V

    return-void
.end method

.method public static final synthetic access$initLoad(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;)V
    .locals 0

    .line 145
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->initLoad()V

    return-void
.end method

.method public static final synthetic access$loadDevice(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;)V
    .locals 0

    .line 145
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->loadDevice()V

    return-void
.end method

.method public static final synthetic access$openNotificationSetting(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;)V
    .locals 0

    .line 145
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->openNotificationSetting()V

    return-void
.end method

.method public static final synthetic access$parseBannerList(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 145
    invoke-direct {p0, p1}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->parseBannerList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$parseGoWeiXinContacts(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;Ljava/lang/String;)V
    .locals 0

    .line 145
    invoke-direct {p0, p1}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->parseGoWeiXinContacts(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$requestCardS(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;Ljava/lang/String;)V
    .locals 0

    .line 145
    invoke-direct {p0, p1}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->requestCardS(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$requestCardState(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;Ljava/lang/String;)V
    .locals 0

    .line 145
    invoke-direct {p0, p1}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->requestCardState(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$requestCleanDeviceTokenBySn(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;Ljava/lang/String;)V
    .locals 0

    .line 145
    invoke-direct {p0, p1}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->requestCleanDeviceTokenBySn(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$requestPushUserRecord(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;)V
    .locals 0

    .line 145
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->requestPushUserRecord()V

    return-void
.end method

.method public static final synthetic access$requestUpdateDeviceName(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 145
    invoke-direct {p0, p1, p2}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->requestUpdateDeviceName(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$runSecretKey(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;)V
    .locals 0

    .line 145
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->runSecretKey()V

    return-void
.end method

.method public static final synthetic access$setBannerList$p(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;Ljava/util/List;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->bannerList:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$setCanRequestInterAd$cp(Z)V
    .locals 0

    .line 145
    sput-boolean p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->canRequestInterAd:Z

    return-void
.end method

.method public static final synthetic access$setNotificationState(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;Z)V
    .locals 0

    .line 145
    invoke-direct {p0, p1}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->setNotificationState(Z)V

    return-void
.end method

.method public static final synthetic access$setupBanner(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;)V
    .locals 0

    .line 145
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->setupBanner()V

    return-void
.end method

.method public static final synthetic access$showGifDailog(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;Ljava/lang/String;)V
    .locals 0

    .line 145
    invoke-direct {p0, p1}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->showGifDailog(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$showHintUnOnlineDialog(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;Ljava/lang/String;)V
    .locals 0

    .line 145
    invoke-direct {p0, p1}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->showHintUnOnlineDialog(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$showNote(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 145
    invoke-direct {p0, p1, p2, p3}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->showNote(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static final synthetic access$updateCardExpirationTime(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 145
    invoke-direct {p0, p1, p2}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->updateCardExpirationTime(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$updateDeviceNetDBM(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;)V
    .locals 0

    .line 145
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->updateDeviceNetDBM()V

    return-void
.end method

.method public static final synthetic access$updateDevicePower(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;Ljava/lang/String;I)V
    .locals 0

    .line 145
    invoke-direct {p0, p1, p2}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->updateDevicePower(Ljava/lang/String;I)V

    return-void
.end method

.method public static final synthetic access$updateDeviceStatus(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;)V
    .locals 0

    .line 145
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->updateDeviceStatus()V

    return-void
.end method

.method public static final synthetic access$updateOnlineState(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 145
    invoke-direct {p0, p1, p2}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->updateOnlineState(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final checkHintAdWhenBindDevice()V
    .locals 4

    .line 2417
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->TAG:Ljava/lang/String;

    sget-object v1, Lcom/dgiot/speedmonitoring/DGConfiguration;->mBindSuccessDeviceSn:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->isShowHintFlag:Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "checkHintAdWhenBindDevice:addSuccess:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 2418
    iget-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->isShowHintFlag:Z

    if-eqz v0, :cond_0

    return-void

    .line 2421
    :cond_0
    sget-object v0, Lcom/dgiot/speedmonitoring/DGConfiguration;->mBindSuccessDeviceSn:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/dgiot/speedmonitoring/DGConfiguration;->mBindSuccessDeviceSn:Ljava/lang/String;

    invoke-static {v0}, Lcom/dgiot/speedmonitoring/util/YunInfoUtil;->isYunOk(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 2422
    iput-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->isShowHintFlag:Z

    const-string v0, ""

    .line 2434
    sput-object v0, Lcom/dgiot/speedmonitoring/DGConfiguration;->mBindSuccessDeviceSn:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method private final checkNotificationPer()V
    .locals 0

    return-void
.end method

.method private final checkNotificationStateDialog()V
    .locals 5

    const-string v0, "0"

    .line 1135
    :try_start_0
    invoke-static {}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getNotificationState()Ljava/lang/String;

    move-result-object v1

    .line 1136
    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->TAG:Ljava/lang/String;

    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->isNotificationEnabled()Z

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "saveNotificationState state->"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "isNotificationEnabled:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1137
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->setNotificationState(Z)V

    .line 1138
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/dgiot/speedmonitoring/DGConfiguration;->initOpenApp:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->notePopupView:Lcom/lxj/xpopup/core/BasePopupView;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getUserControlNotificationState()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1139
    sput-boolean v0, Lcom/dgiot/speedmonitoring/DGConfiguration;->initOpenApp:Z

    .line 1140
    invoke-static {}, Lcom/dgiot/speedmonitoring/DGConfiguration;->saveUserControlNotificationState()V

    .line 1141
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment$$ExternalSyntheticLambda12;-><init>(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private static final checkNotificationStateDialog$lambda$22(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;)V
    .locals 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1143
    :try_start_0
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->getBase()Lcom/dgiot/speedmonitoring/base/Base;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/dgiot/speedmonitoring/ui/pop/CommonCenterPopup;

    .line 1144
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    .line 1145
    sget v4, Lcom/dgiot/speedmonitoring/R$string;->hint_agreement_title:I

    invoke-virtual {p0, v4}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1146
    sget v5, Lcom/dgiot/speedmonitoring/R$string;->notification_open_hint:I

    invoke-virtual {p0, v5}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1147
    new-instance v6, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment$checkNotificationStateDialog$1$1;

    invoke-direct {v6, p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment$checkNotificationStateDialog$1$1;-><init>(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;)V

    check-cast v6, Lcom/dgiot/speedmonitoring/ui/pop/CommonCenterPopup$CenterDialogClickListener;

    .line 1143
    invoke-direct {v2, v3, v4, v5, v6}, Lcom/dgiot/speedmonitoring/ui/pop/CommonCenterPopup;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/dgiot/speedmonitoring/ui/pop/CommonCenterPopup$CenterDialogClickListener;)V

    .line 1162
    sget v3, Lcom/dgiot/speedmonitoring/R$string;->notification_setting_open_title:I

    invoke-virtual {p0, v3}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "#65A2FF"

    .line 1163
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    .line 1161
    invoke-virtual {v2, v3, v4}, Lcom/dgiot/speedmonitoring/ui/pop/CommonCenterPopup;->setRightClickViewText(Ljava/lang/String;I)Lcom/dgiot/speedmonitoring/ui/pop/CommonCenterPopup;

    move-result-object v2

    .line 1165
    sget v3, Lcom/dgiot/speedmonitoring/R$string;->deviceManager_unbind_no:I

    invoke-virtual {p0, v3}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/dgiot/speedmonitoring/ui/pop/CommonCenterPopup;->showLeftClickView(Ljava/lang/String;)Lcom/dgiot/speedmonitoring/ui/pop/CommonCenterPopup;

    move-result-object p0

    const-string v2, "showLeftClickView(...)"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1143
    invoke-virtual {v0, v1, p0}, Lcom/dgiot/speedmonitoring/base/Base;->showCommonCenterPop(Landroid/content/Context;Lcom/dgiot/speedmonitoring/ui/pop/CommonCenterPopup;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private final checkNotificationStateFromSetting()V
    .locals 3

    .line 1121
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->TAG:Ljava/lang/String;

    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->isNotificationEnabled()Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "checkNotificationStateFromSetting:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1122
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->isNotificationEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1123
    invoke-direct {p0, v1}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->setNotificationState(Z)V

    .line 1124
    invoke-direct {p0, v1, v1}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->requestNotificationState(ZI)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1127
    invoke-direct {p0, v0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->setNotificationState(Z)V

    .line 1128
    invoke-direct {p0, v0, v1}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->requestNotificationState(ZI)V

    :goto_0
    return-void
.end method

.method private final checkUpdate()V
    .locals 0

    return-void
.end method


.method private final cleanLog()V
    .locals 9

    .line 1704
    :try_start_0
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 1705
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1706
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1707
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 1708
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 1709
    invoke-static {}, Lcom/common/util/assist/DateUtil;->getYmd()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getYmd(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "-"

    const-string v5, ""

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "log.txt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1710
    aget-object v4, v0, v2

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1711
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    :cond_2
    return-void
.end method

.method private final cleanVideoFile()V
    .locals 2

    .line 345
    new-instance v0, Ljava/lang/Thread;

    .line 353
    new-instance v1, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment$$ExternalSyntheticLambda10;-><init>(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;)V

    .line 345
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 353
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static final cleanVideoFile$lambda$1(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 347
    :try_start_0
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getDataDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "videos"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 348
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->deleteRecursive(Ljava/io/File;)V

    const-string p0, "deleteVideoFileLog:clean"

    .line 349
    invoke-static {p0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private final clickGoContacts()V
    .locals 7

    .line 580
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->TAG:Ljava/lang/String;

    sget-object v1, Lcom/dgiot/speedmonitoring/DGConfiguration;->USER_ONLINE_INFO:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "requestUserOnlineInfo:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    sget-object v0, Lcom/dgiot/speedmonitoring/DGConfiguration;->USER_ONLINE_INFO:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 584
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment$clickGoContacts$1;

    const/4 v4, 0x0

    invoke-direct {v0, p0, v4}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment$clickGoContacts$1;-><init>(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto :goto_0

    .line 614
    :cond_0
    sget-object v0, Lcom/dgiot/speedmonitoring/DGConfiguration;->USER_ONLINE_INFO:Ljava/lang/String;

    const-string v1, "USER_ONLINE_INFO"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->parseGoWeiXinContacts(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final closeInfoAd()V
    .locals 2

    const/4 v0, 0x1

    .line 2587
    invoke-static {v0}, Lcom/dgiot/speedmonitoring/DGConfiguration;->saveUserIsCloseAd1(Z)V

    .line 2588
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " click onClose ad5"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 2589
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->deviceVideoAdapter:Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;

    if-nez v0, :cond_0

    const-string v0, "deviceVideoAdapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->removeAdView()V

    .line 2591
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentHomeBinding;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentHomeBinding;->llBottomAd:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    :cond_1
    return-void
.end method

.method private static final createBottomAdView$lambda$48(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 2607
    invoke-static {p1}, Lcom/dgiot/speedmonitoring/DGConfiguration;->saveUserIsCloseAd1(Z)V

    .line 2608
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/dgiot/speedmonitoring/databinding/FragmentHomeBinding;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/FragmentHomeBinding;->llBottomAd:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 2609
    :cond_0
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/dgiot/speedmonitoring/databinding/FragmentHomeBinding;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/FragmentHomeBinding;->llBottomAd:Landroid/widget/LinearLayout;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2610
    :goto_1
    iget-object p0, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string/jumbo p1, "\u5e95\u90e8\u5e7f\u544a\u5173\u95ed"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    return-void
.end method

.method private static final createBottomAdView$lambda$49(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2615
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->goAdRecharge()V

    return-void
.end method

.method private final getDelayTime(I)J
    .locals 4

    int-to-long v0, p1

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method private final goAdRecharge()V
    .locals 11

    .line 2214
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    invoke-static {}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getDeviceList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 2215
    iget-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 2216
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "\u60a8\u8fd8\u6ca1\u6709\u8bbe\u5907, \u8bf7\u5148\u6dfb\u52a0\u8bbe\u5907\uff01"

    invoke-static {v0, v1}, Lcom/dgiot/speedmonitoring/util/ToastUtil;->toast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 2219
    :cond_0
    iget-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    .line 2220
    invoke-static {}, Lcom/dgiot/speedmonitoring/tencent/WXSDKManager;->getInstance()Lcom/dgiot/speedmonitoring/tencent/WXSDKManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;

    invoke-virtual {v0}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getSn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v3

    check-cast v3, Lcom/dgiot/speedmonitoring/databinding/FragmentHomeBinding;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/dgiot/speedmonitoring/databinding/FragmentHomeBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    check-cast v3, Landroid/view/View;

    invoke-virtual {v1, v2, v0, v3}, Lcom/dgiot/speedmonitoring/tencent/WXSDKManager;->goWebPayPage(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)V

    goto :goto_2

    .line 2223
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    .line 2224
    iget-object v2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    const-string v4, "element"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Iterable;

    .line 2895
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;

    .line 2225
    invoke-virtual {v4}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getNickName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "getNickName(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2227
    :cond_3
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/common/util/view/DisplayUtil;->getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 2228
    new-instance v4, Lcom/lxj/xpopup/XPopup$Builder;

    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/lxj/xpopup/XPopup$Builder;-><init>(Landroid/content/Context;)V

    .line 2229
    div-int/lit8 v5, v2, 0x4

    sub-int/2addr v2, v5

    invoke-virtual {v4, v2}, Lcom/lxj/xpopup/XPopup$Builder;->popupWidth(I)Lcom/lxj/xpopup/XPopup$Builder;

    move-result-object v2

    const/high16 v4, 0x42480000    # 50.0f

    .line 2230
    invoke-virtual {v2, v4}, Lcom/lxj/xpopup/XPopup$Builder;->borderRadius(F)Lcom/lxj/xpopup/XPopup$Builder;

    move-result-object v5

    .line 2232
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/dgiot/speedmonitoring/R$string;->person_pop_select_device_title2:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Ljava/lang/CharSequence;

    check-cast v1, Ljava/util/Collection;

    new-array v2, v3, [Ljava/lang/String;

    .line 2898
    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, -0x1

    .line 2231
    new-instance v10, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment$$ExternalSyntheticLambda15;

    invoke-direct {v10, p0, v0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment$$ExternalSyntheticLambda15;-><init>(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual/range {v5 .. v10}, Lcom/lxj/xpopup/XPopup$Builder;->asCenterList(Ljava/lang/CharSequence;[Ljava/lang/String;[IILcom/lxj/xpopup/interfaces/OnSelectListener;)Lcom/lxj/xpopup/impl/CenterListPopupView;

    move-result-object v0

    .line 2238
    invoke-virtual {v0}, Lcom/lxj/xpopup/impl/CenterListPopupView;->show()Lcom/lxj/xpopup/core/BasePopupView;

    :goto_2
    return-void
.end method

.method private static final goAdRecharge$lambda$45(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;Lkotlin/jvm/internal/Ref$ObjectRef;ILjava/lang/String;)V
    .locals 1

    const-string p3, "this$0"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$deviceList"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2235
    invoke-static {}, Lcom/dgiot/speedmonitoring/tencent/WXSDKManager;->getInstance()Lcom/dgiot/speedmonitoring/tencent/WXSDKManager;

    move-result-object p3

    .line 2236
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;

    invoke-virtual {p1}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getSn()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/dgiot/speedmonitoring/databinding/FragmentHomeBinding;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/databinding/FragmentHomeBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    check-cast p0, Landroid/view/View;

    invoke-virtual {p3, v0, p1, p0}, Lcom/dgiot/speedmonitoring/tencent/WXSDKManager;->goWebPayPage(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method private final goAiWeb()V
    .locals 4

    .line 309
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-class v2, Lcom/dgiot/speedmonitoring/ui/customer/CustomerWeb;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 311
    invoke-static {}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getLoginUserInfo()Lcom/dgiot/speedmonitoring/bean/TokenBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dgiot/speedmonitoring/bean/TokenBean;->getUserId()J

    move-result-wide v1

    .line 312
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dgiot/speedmonitoring/util/XuedaAesUtil;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 314
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "https://xdyai.xdy99.com/#/customerService?k=9b78922d1fa475065ae126b1b76f936de50dad1e4207e3539f5e278f8e52fc2e&u="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 315
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "parseGoWeiXinContacts_aes:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    const-string/jumbo v2, "url"

    .line 316
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "type"

    const/4 v2, 0x1

    .line 317
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 318
    invoke-virtual {p0, v0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private final goCheckPermission()V
    .locals 2

    .line 2462
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-static {v0}, Lcom/hjq/permissions/XXPermissions;->with(Landroidx/fragment/app/Fragment;)Lcom/hjq/permissions/XXPermissions;

    move-result-object v0

    const-string v1, "android.permission.CAMERA"

    .line 2463
    invoke-virtual {v0, v1}, Lcom/hjq/permissions/XXPermissions;->permission(Ljava/lang/String;)Lcom/hjq/permissions/XXPermissions;

    move-result-object v0

    .line 2467
    new-instance v1, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment$goCheckPermission$1;

    invoke-direct {v1, p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment$goCheckPermission$1;-><init>(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;)V

    check-cast v1, Lcom/hjq/permissions/OnPermissionCallback;

    invoke-virtual {v0, v1}, Lcom/hjq/permissions/XXPermissions;->request(Lcom/hjq/permissions/OnPermissionCallback;)V

    return-void
.end method

.method private final goCustomerNewWeb()V
    .locals 5

    const-string v0, ""

    .line 619
    sput-object v0, Lcom/dgiot/speedmonitoring/DGConfiguration;->USER_ONLINE_INFO:Ljava/lang/String;

    :try_start_0
    const-string/jumbo v0, "ww26baaccfeb4fd452"

    const-string v1, "https://work.weixin.qq.com/kfid/kfce41005766206b2d4"

    .line 627
    invoke-static {}, Lcom/dgiot/speedmonitoring/tencent/WXSDKManager;->getInstance()Lcom/dgiot/speedmonitoring/tencent/WXSDKManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v4, Lcom/dgiot/speedmonitoring/databinding/FragmentHomeBinding;

    invoke-virtual {v4}, Lcom/dgiot/speedmonitoring/databinding/FragmentHomeBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v2, v3, v0, v1, v4}, Lcom/dgiot/speedmonitoring/tencent/WXSDKManager;->goWeiXinContacts(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private final goWebSiteCheckUpdate()V
    .locals 2

    .line 248
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 249
    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/xuexiang/xupdate/XUpdate;->newBuild(Landroid/content/Context;)Lcom/xuexiang/xupdate/UpdateManager$Builder;

    move-result-object v0

    const-string v1, "https://"

    .line 250
    invoke-virtual {v0, v1}, Lcom/xuexiang/xupdate/UpdateManager$Builder;->updateUrl(Ljava/lang/String;)Lcom/xuexiang/xupdate/UpdateManager$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 251
    invoke-virtual {v0, v1}, Lcom/xuexiang/xupdate/UpdateManager$Builder;->isWifiOnly(Z)Lcom/xuexiang/xupdate/UpdateManager$Builder;

    move-result-object v0

    .line 252
    invoke-virtual {v0}, Lcom/xuexiang/xupdate/UpdateManager$Builder;->update()V

    :cond_0
    return-void
.end method

.method private final initAdRechargeHintViewClick()V
    .locals 2

    .line 2337
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentHomeBinding;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentHomeBinding;->tvAdRecharge:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment$$ExternalSyntheticLambda16;-><init>(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2355
    :cond_0
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentHomeBinding;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentHomeBinding;->tvDeleteAdRecharge:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment$$ExternalSyntheticLambda17;-><init>(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method private static final initAdRechargeHintViewClick$lambda$46(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;Landroid/view/View;)V
    .locals 5

    const-string p1, "https://m.daguiot.com/#/hs/pay?sn="

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2339
    :try_start_0
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->deviceVideoAdapter:Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;

    if-nez v0, :cond_0

    const-string v0, "deviceVideoAdapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->getData()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;

    invoke-virtual {v0}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getSn()Ljava/lang/String;

    move-result-object v0

    .line 2340
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2341
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "initAdRechargeHintViewClick:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 2346
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->loadTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x7d0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 2347
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->loadTime:J

    .line 2348
    new-instance v1, Lcom/dgiot/speedmonitoring/ui/pop/AdRechargePopup;

    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    invoke-direct {v1, p0, v0, p1}, Lcom/dgiot/speedmonitoring/ui/pop/AdRechargePopup;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 2349
    invoke-virtual {v1}, Lcom/dgiot/speedmonitoring/ui/pop/AdRechargePopup;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method private static final initAdRechargeHintViewClick$lambda$47(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2356
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Lcom/dgiot/speedmonitoring/databinding/FragmentHomeBinding;

    iget-object p0, p0, Lcom/dgiot/speedmonitoring/databinding/FragmentHomeBinding;->rlAdHintRecharge:Landroid/widget/RelativeLayout;

    const/16 p1, 0x8


    const/4 p0, 0x0

    .line 2357
    sput-boolean p0, Lcom/dgiot/speedmonitoring/DGConfiguration;->showAdRechargeHint:Z

    return-void
.end method

.method private final initData()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;",
            ">;"
        }
    .end annotation

    .line 1743
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method private final initLoad()V
    .locals 4

    .line 1116
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    const/16 v2, 0x400

    int-to-long v2, v2

    div-long/2addr v0, v2

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 1117
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "initLoad:app maxHeapSize=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1118
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->loadDevice()V

    return-void
.end method

.method private final initLoadView()V
    .locals 3

    .line 1725
    :try_start_0
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->getBase()Lcom/dgiot/speedmonitoring/base/Base;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Lcom/dgiot/speedmonitoring/databinding/FragmentHomeBinding;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/databinding/FragmentHomeBinding;->flRecyclerviewDeviceList:Landroid/widget/FrameLayout;

    const-string v2, "flRecyclerviewDeviceList"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/dgiot/speedmonitoring/base/Base;->setLoadProgressViewNeedHideView(Landroid/view/View;)V

    .line 1726
    :cond_0
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->getBase()Lcom/dgiot/speedmonitoring/base/Base;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment$initLoadView$1;

    invoke-direct {v1, p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment$initLoadView$1;-><init>(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;)V

    check-cast v1, Lcom/dgiot/speedmonitoring/base/Base$OnClickLoadViewListener;

    invoke-virtual {v0, v1}, Lcom/dgiot/speedmonitoring/base/Base;->setLoadProgressViewClickTryNetListener(Lcom/dgiot/speedmonitoring/base/Base$OnClickLoadViewListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method private static final initNativeAdList$lambda$13(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 783
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->goAdRecharge()V

    return-void
.end method

.method private static final initNativeAdList$lambda$14(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 786
    invoke-static {p1}, Lcom/dgiot/speedmonitoring/DGConfiguration;->saveUserIsCloseAd1(Z)V

    .line 788
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/dgiot/speedmonitoring/databinding/FragmentHomeBinding;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/dgiot/speedmonitoring/databinding/FragmentHomeBinding;->llBottomAd:Landroid/widget/LinearLayout;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    :cond_0
    return-void
.end method

.method private static final initialize$lambda$11(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 535
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->TAG:Ljava/lang/String;

    invoke-static {}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getDeviceList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "refreshLayoutLog:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 536
    invoke-static {}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getDeviceList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 537
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->getBase()Lcom/dgiot/speedmonitoring/base/Base;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/dgiot/speedmonitoring/enumerate/DataLoadResult;->LOADING:Lcom/dgiot/speedmonitoring/enumerate/DataLoadResult;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v1, v2}, Lcom/dgiot/speedmonitoring/base/Base;->setProgressView$default(Lcom/dgiot/speedmonitoring/base/Base;Lcom/dgiot/speedmonitoring/enumerate/DataLoadResult;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_0
    const/4 p1, 0x1

    .line 539
    iput-boolean p1, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->isRefreshYunInfo:Z

    .line 540
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->loadDevice()V

    .line 542
    iget-object p0, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_1

    new-instance p1, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment$$ExternalSyntheticLambda25;

    invoke-direct {p1}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment$$ExternalSyntheticLambda25;-><init>()V

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method private static final initialize$lambda$11$lambda$10()V
    .locals 1

    .line 543
    invoke-static {}, Lcom/dgiot/speedmonitoring/iot/DGIotClientManager;->getInstance()Lcom/dgiot/speedmonitoring/iot/DGIotClientManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dgiot/speedmonitoring/iot/DGIotClientManager;->sendSubDeviceState()V

    return-void
.end method

.method private static final initialize$lambda$12(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method private static final initialize$lambda$3(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;Landroid/view/View;)V
    .locals 3

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 455
    :try_start_0
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Lcom/dgiot/speedmonitoring/databinding/FragmentHomeBinding;

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/FragmentHomeBinding;->ivNotification:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->isSelected()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "getString(...)"

    if-nez p1, :cond_0

    .line 457
    :try_start_1
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/dgiot/speedmonitoring/R$string;->notification_setting_open:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1, p1}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->openNotificationsDialog(Ljava/lang/String;Z)V

    goto :goto_0

    .line 460
    :cond_0
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/dgiot/speedmonitoring/R$string;->notification_setting_close:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1, p1}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->openNotificationsDialog(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method private static final initialize$lambda$4(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method private static final initialize$lambda$5(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;Landroid/view/View;)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 475
    invoke-static {}, Lcom/dgiot/speedmonitoring/helper/PushHelper;->getChannel()Ljava/lang/String;

    move-result-object p1

    const-string v0, "huawei"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 477
    :try_start_0
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "android.permission.CAMERA"

    invoke-virtual {p1, v1}, Landroidx/fragment/app/FragmentActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-eqz v0, :cond_1

    .line 479
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->goCheckPermission()V

    goto :goto_0

    .line 481
    :cond_1
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->showPermissionHint()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 485
    :catch_0
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->clickGoContacts()V

    goto :goto_0

    .line 489
    :cond_2
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->clickGoContacts()V

    :goto_0
    return-void
.end method

.method private static final initialize$lambda$6(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;Landroid/view/View;)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 499
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-class v1, Lcom/dgiot/speedmonitoring/ui/customer/ActivityWeb;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private static final initialize$lambda$7(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;Landroid/view/View;)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 509
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-class v1, Lcom/dgiot/speedmonitoring/ui/customer/ActivityWeb;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private static final initialize$lambda$8(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;Landroid/view/View;)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 518
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-class v1, Lcom/dgiot/speedmonitoring/ui/devicemanage/AddDeviceListSelectActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private static final initialize$lambda$9(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;Landroid/view/View;)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 530
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-class v1, Lcom/dgiot/speedmonitoring/ui/scan/ScanActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private final isNotificationEnabled()Z
    .locals 12

    const-string v0, "null cannot be cast to non-null type kotlin.Int"

    .line 952
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    .line 953
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "notification"

    .line 954
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.app.NotificationManager"

    .line 953
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/app/NotificationManager;

    .line 955
    invoke-virtual {v0}, Landroid/app/NotificationManager;->areNotificationsEnabled()Z

    move-result v0

    return v0

    .line 957
    :cond_0
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v2, "appops"

    .line 958
    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.app.AppOpsManager"

    .line 957
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/app/AppOpsManager;

    .line 959
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 960
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    .line 962
    :try_start_0
    const-class v5, Landroid/app/AppOpsManager;

    .line 963
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-string v6, "checkOpNoThrow"

    const/4 v7, 0x3

    new-array v8, v7, [Ljava/lang/Class;

    .line 966
    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v4

    .line 967
    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x1

    aput-object v9, v8, v10

    .line 966
    const-class v9, Ljava/lang/String;

    const/4 v11, 0x2

    aput-object v9, v8, v11

    .line 964
    invoke-virtual {v5, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const-string v8, "OP_POST_NOTIFICATION"

    .line 969
    invoke-virtual {v5, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 970
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    new-array v7, v7, [Ljava/lang/Object;

    .line 974
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v4

    .line 975
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v10

    aput-object v3, v7, v11

    .line 972
    invoke-virtual {v6, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_1

    move v4, v10

    :catch_0
    :cond_1
    return v4
.end method

.method private final loadDevice()V
    .locals 3

    const/4 v0, 0x0

    .line 1410
    iput-object v0, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->deviceListResult:Lcom/dgiot/speedmonitoring/ui/home/HomePageState$GetDeviceListResult;

    .line 1411
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/dgiot/speedmonitoring/databinding/FragmentHomeBinding;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/databinding/FragmentHomeBinding;->recyclerviewDeviceList:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->setEnabled(Z)V

    .line 1413
    :goto_1
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->homeViewModel:Lcom/dgiot/speedmonitoring/ui/home/HomeViewModel;

    const-string v2, "homeViewModel"

    if-nez v1, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v0

    :cond_2
    invoke-virtual {v1}, Lcom/dgiot/speedmonitoring/ui/home/HomeViewModel;->requestMyDeviceList()V

    .line 1414
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->homeViewModel:Lcom/dgiot/speedmonitoring/ui/home/HomeViewModel;

    if-nez v1, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    move-object v0, v1

    :goto_2
    invoke-virtual {v0}, Lcom/dgiot/speedmonitoring/ui/home/HomeViewModel;->getGetDeviceListResult()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    new-instance v2, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment$$ExternalSyntheticLambda0;-><init>(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private static final loadDevice$lambda$35(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;Lcom/dgiot/speedmonitoring/ui/home/HomePageState$GetDeviceListResult;)V
    .locals 11

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    .line 1415
    :cond_0
    iput-object p1, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->deviceListResult:Lcom/dgiot/speedmonitoring/ui/home/HomePageState$GetDeviceListResult;

    .line 1416
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/dgiot/speedmonitoring/databinding/FragmentHomeBinding;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/FragmentHomeBinding;->recyclerviewDeviceList:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    const/4 v1, 0x1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v1}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->setEnabled(Z)V

    .line 1417
    :goto_1
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->deviceListResult:Lcom/dgiot/speedmonitoring/ui/home/HomePageState$GetDeviceListResult;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/dgiot/speedmonitoring/ui/home/HomePageState$GetDeviceListResult;->getCode()Ljava/lang/Integer;

    move-result-object v2

    goto :goto_2

    :cond_3
    move-object v2, v0

    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, "loadDevice:getDeviceListResult deviceListResult.code "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1418
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->deviceListResult:Lcom/dgiot/speedmonitoring/ui/home/HomePageState$GetDeviceListResult;

    const/4 v2, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/dgiot/speedmonitoring/ui/home/HomePageState$GetDeviceListResult;->getCode()Ljava/lang/Integer;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v3, 0xc8

    if-ne p1, v3, :cond_5

    move p1, v1

    goto :goto_4

    :cond_5
    :goto_3
    move p1, v2

    :goto_4
    const-string v3, ""

    const-string v4, "deviceVideoAdapter"

    const/4 v5, 0x2

    if-eqz p1, :cond_11

    .line 1419
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->deviceListResult:Lcom/dgiot/speedmonitoring/ui/home/HomePageState$GetDeviceListResult;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/dgiot/speedmonitoring/ui/home/HomePageState$GetDeviceListResult;->getData()Ljava/util/List;

    move-result-object p1

    goto :goto_5

    :cond_6
    move-object p1, v0

    :goto_5
    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->deviceListResult:Lcom/dgiot/speedmonitoring/ui/home/HomePageState$GetDeviceListResult;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/dgiot/speedmonitoring/ui/home/HomePageState$GetDeviceListResult;->getData()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_6

    :cond_7
    move-object p1, v0

    :goto_6
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-lez p1, :cond_f

    .line 1421
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, "loadDevice:start update device list"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1422
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->getBase()Lcom/dgiot/speedmonitoring/base/Base;

    move-result-object p1

    if-eqz p1, :cond_8

    sget-object v3, Lcom/dgiot/speedmonitoring/enumerate/DataLoadResult;->FINISH:Lcom/dgiot/speedmonitoring/enumerate/DataLoadResult;

    invoke-static {p1, v3, v0, v5, v0}, Lcom/dgiot/speedmonitoring/base/Base;->setProgressView$default(Lcom/dgiot/speedmonitoring/base/Base;Lcom/dgiot/speedmonitoring/enumerate/DataLoadResult;Ljava/lang/String;ILjava/lang/Object;)V

    .line 1423
    :cond_8
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->deviceVideoAdapter:Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;

    if-nez p1, :cond_9

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_9
    iget-object v3, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->deviceVideoAdapter:Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;

    if-nez v3, :cond_a

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v0

    :cond_a
    invoke-virtual {v3}, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->getData()Ljava/util/List;

    move-result-object v3

    const-string v5, "getData(...)"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->deviceListResult:Lcom/dgiot/speedmonitoring/ui/home/HomePageState$GetDeviceListResult;

    if-eqz v5, :cond_b

    invoke-virtual {v5}, Lcom/dgiot/speedmonitoring/ui/home/HomePageState$GetDeviceListResult;->getData()Ljava/util/List;

    move-result-object v5

    goto :goto_7

    :cond_b
    move-object v5, v0

    :goto_7
    invoke-direct {p0, v3, v5}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->updateListUpState(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->setData(Ljava/util/List;)V

    .line 1426
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->TAG:Ljava/lang/String;

    invoke-static {}, Lcom/vise/xsnow/common/GsonUtil;->gson()Lcom/google/gson/Gson;

    move-result-object v3

    iget-object v5, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->deviceListResult:Lcom/dgiot/speedmonitoring/ui/home/HomePageState$GetDeviceListResult;

    invoke-virtual {v3, v5}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v5, "loadDevice:requestMyDeviceList_gson1:"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1427
    invoke-static {}, Lcom/vise/xsnow/common/GsonUtil;->gson()Lcom/google/gson/Gson;

    move-result-object p1

    iget-object v3, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->deviceListResult:Lcom/dgiot/speedmonitoring/ui/home/HomePageState$GetDeviceListResult;

    invoke-virtual {p1, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dgiot/speedmonitoring/DGConfiguration;->saveDeviceList(Ljava/lang/String;)V

    .line 1428
    new-instance p1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 1429
    iget-object v3, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->deviceVideoAdapter:Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;

    if-nez v3, :cond_c

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v0

    :cond_c
    invoke-virtual {v3}, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->getData()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_19

    .line 1430
    iget-object v3, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->mHandler:Landroid/os/Handler;

    if-eqz v3, :cond_d

    new-instance v5, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment$$ExternalSyntheticLambda11;

    invoke-direct {v5, p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment$$ExternalSyntheticLambda11;-><init>(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;)V

    const-wide/16 v6, 0xfa0

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1445
    :cond_d
    sget-object v3, Lcom/dgiot/speedmonitoring/ui/devicemanage/AddDeviceBindDealActivity;->Companion:Lcom/dgiot/speedmonitoring/ui/devicemanage/AddDeviceBindDealActivity$Companion;

    invoke-virtual {v3}, Lcom/dgiot/speedmonitoring/ui/devicemanage/AddDeviceBindDealActivity$Companion;->getNeedSendSubDeviceState()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1446
    sget-object v3, Lcom/dgiot/speedmonitoring/ui/devicemanage/AddDeviceBindDealActivity;->Companion:Lcom/dgiot/speedmonitoring/ui/devicemanage/AddDeviceBindDealActivity$Companion;

    invoke-virtual {v3, v2}, Lcom/dgiot/speedmonitoring/ui/devicemanage/AddDeviceBindDealActivity$Companion;->setNeedSendSubDeviceState(Z)V

    .line 1447
    invoke-static {}, Lcom/dgiot/speedmonitoring/iot/DGIotClientManager;->getInstance()Lcom/dgiot/speedmonitoring/iot/DGIotClientManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dgiot/speedmonitoring/iot/DGIotClientManager;->sendSubDeviceState()V

    .line 1448
    iput-boolean v2, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->hasLoadVideoFileDownService:Z

    .line 1449
    iput-boolean v2, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->hasLoadDeviceVideoFileService:Z

    .line 1452
    :cond_e
    new-instance v3, Ljava/lang/Thread;

    .line 1476
    new-instance v5, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment$$ExternalSyntheticLambda18;

    invoke-direct {v5, p0, p1}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment$$ExternalSyntheticLambda18;-><init>(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 1452
    invoke-direct {v3, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1476
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 1478
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->updateDeviceToken()V

    .line 1479
    iget-object v3, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->TAG:Ljava/lang/String;

    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "loadDevice:listNotifyDataSetChanged:size "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 1486
    :cond_f
    invoke-static {v3}, Lcom/dgiot/speedmonitoring/DGConfiguration;->saveDeviceList(Ljava/lang/String;)V

    .line 1487
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->getBase()Lcom/dgiot/speedmonitoring/base/Base;

    move-result-object p1

    if-eqz p1, :cond_10

    sget-object v3, Lcom/dgiot/speedmonitoring/enumerate/DataLoadResult;->ADD_DEVICES:Lcom/dgiot/speedmonitoring/enumerate/DataLoadResult;

    invoke-static {p1, v3, v0, v5, v0}, Lcom/dgiot/speedmonitoring/base/Base;->setProgressView$default(Lcom/dgiot/speedmonitoring/base/Base;Lcom/dgiot/speedmonitoring/enumerate/DataLoadResult;Ljava/lang/String;ILjava/lang/Object;)V

    .line 1488
    :cond_10
    invoke-static {}, Lcom/dgiot/speedmonitoring/iot/DGIotClientManager;->getInstance()Lcom/dgiot/speedmonitoring/iot/DGIotClientManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/dgiot/speedmonitoring/iot/DGIotClientManager;->connect()V

    goto/16 :goto_b

    .line 1491
    :cond_11
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->deviceListResult:Lcom/dgiot/speedmonitoring/ui/home/HomePageState$GetDeviceListResult;

    if-eqz p1, :cond_13

    invoke-virtual {p1}, Lcom/dgiot/speedmonitoring/ui/home/HomePageState$GetDeviceListResult;->getCode()Ljava/lang/Integer;

    move-result-object p1

    if-nez p1, :cond_12

    goto :goto_8

    :cond_12
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v6, 0x271a

    if-ne p1, v6, :cond_13

    move p1, v1

    goto :goto_9

    :cond_13
    :goto_8
    move p1, v2

    :goto_9
    if-eqz p1, :cond_14

    .line 1492
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    const-class v5, Lcom/dgiot/speedmonitoring/ui/login/LoginActivity;

    invoke-direct {p1, v3, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v3, 0x4000000

    .line 1493
    invoke-virtual {p1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1494
    invoke-virtual {p0, p1}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_b

    .line 1496
    :cond_14
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->deviceListResult:Lcom/dgiot/speedmonitoring/ui/home/HomePageState$GetDeviceListResult;

    if-eqz p1, :cond_15

    invoke-virtual {p1}, Lcom/dgiot/speedmonitoring/ui/home/HomePageState$GetDeviceListResult;->getMsg()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_15

    check-cast p1, Ljava/lang/CharSequence;

    const-string v6, "NETWORK_ERROR"

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {p1, v6, v2, v5, v0}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    if-ne p1, v1, :cond_15

    move p1, v1

    goto :goto_a

    :cond_15
    move p1, v2

    :goto_a
    if-eqz p1, :cond_17

    .line 1497
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->getBase()Lcom/dgiot/speedmonitoring/base/Base;

    move-result-object p1

    if-eqz p1, :cond_16

    sget-object v6, Lcom/dgiot/speedmonitoring/enumerate/DataLoadResult;->NET_FAIL:Lcom/dgiot/speedmonitoring/enumerate/DataLoadResult;

    invoke-static {p1, v6, v0, v5, v0}, Lcom/dgiot/speedmonitoring/base/Base;->setProgressView$default(Lcom/dgiot/speedmonitoring/base/Base;Lcom/dgiot/speedmonitoring/enumerate/DataLoadResult;Ljava/lang/String;ILjava/lang/Object;)V

    .line 1498
    :cond_16
    invoke-static {v3}, Lcom/dgiot/speedmonitoring/DGConfiguration;->saveDeviceList(Ljava/lang/String;)V

    goto :goto_b

    .line 1501
    :cond_17
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->getBase()Lcom/dgiot/speedmonitoring/base/Base;

    move-result-object p1

    if-eqz p1, :cond_18

    sget-object v6, Lcom/dgiot/speedmonitoring/enumerate/DataLoadResult;->ADD_DEVICES:Lcom/dgiot/speedmonitoring/enumerate/DataLoadResult;

    invoke-static {p1, v6, v0, v5, v0}, Lcom/dgiot/speedmonitoring/base/Base;->setProgressView$default(Lcom/dgiot/speedmonitoring/base/Base;Lcom/dgiot/speedmonitoring/enumerate/DataLoadResult;Ljava/lang/String;ILjava/lang/Object;)V

    .line 1502
    :cond_18
    invoke-static {v3}, Lcom/dgiot/speedmonitoring/DGConfiguration;->saveDeviceList(Ljava/lang/String;)V

    .line 1503
    invoke-static {}, Lcom/dgiot/speedmonitoring/iot/DGIotClientManager;->getInstance()Lcom/dgiot/speedmonitoring/iot/DGIotClientManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/dgiot/speedmonitoring/iot/DGIotClientManager;->connect()V

    .line 1506
    :cond_19
    :goto_b
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/dgiot/speedmonitoring/databinding/FragmentHomeBinding;

    if-eqz p1, :cond_1a

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/FragmentHomeBinding;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    if-eqz p1, :cond_1a

    const/16 v3, 0x1f4

    invoke-virtual {p1, v3}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishRefresh(I)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 1507
    :cond_1a
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->TAG:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->hasLoadDeviceVideoFileService:Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v5, "loadDevice:hasLoadDeviceVideoFileService:"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1508
    iget-boolean p1, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->hasLoadDeviceVideoFileService:Z

    if-nez p1, :cond_1d

    .line 1509
    invoke-static {}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getDeviceList()Ljava/util/List;

    move-result-object p1

    .line 1510
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    move v5, v2

    :goto_c
    if-ge v5, v3, :cond_1d

    .line 1511
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;

    invoke-virtual {v6}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getSn()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/dgiot/speedmonitoring/util/DeviceInfoUtil;->isWifiDevice(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 1512
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->getBase()Lcom/dgiot/speedmonitoring/base/Base;

    move-result-object v3

    if-eqz v3, :cond_1b

    invoke-virtual {v3}, Lcom/dgiot/speedmonitoring/base/Base;->getContext()Landroid/content/Context;

    move-result-object v3

    goto :goto_d

    :cond_1b
    move-object v3, v0

    :goto_d
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;

    invoke-virtual {p1}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getSn()Ljava/lang/String;

    move-result-object p1

    .line 1513
    invoke-static {}, Lcom/common/util/assist/DateUtil;->getYmd()Ljava/lang/String;

    move-result-object v5

    const-string v6, "getYmd(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "-"

    const-string v7, ""

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1512
    invoke-static {v3, p1, v5}, Lcom/dgiot/speedmonitoring/service/DeviceVideoFileService;->startLoadVideo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1514
    iput-boolean v1, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->hasLoadDeviceVideoFileService:Z

    goto :goto_e

    :cond_1c
    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    .line 1520
    :cond_1d
    :goto_e
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->TAG:Ljava/lang/String;

    invoke-static {}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getDeviceList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v5, "loadDevice:deviceVideoAdapter_data_size:"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1521
    invoke-static {}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getDeviceList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 v3, 0x8

    if-lez p1, :cond_2c

    .line 1522
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/dgiot/speedmonitoring/databinding/FragmentHomeBinding;

    if-eqz p1, :cond_1e

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/FragmentHomeBinding;->flAdContent:Landroid/widget/FrameLayout;

    goto :goto_f

    :cond_1e
    move-object p1, v0

    :goto_f
    if-nez p1, :cond_1f

    goto :goto_10

    :cond_1f
    const/4 v5, 0x4

    invoke-virtual {p1, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1523
    :goto_10
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->loadTopSlideView()V

    .line 1525
    invoke-static {}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getDeviceList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v1, :cond_23

    .line 1526
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/dgiot/speedmonitoring/databinding/FragmentHomeBinding;

    if-eqz p1, :cond_20

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/FragmentHomeBinding;->llBottomAd:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_20

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1527
    :cond_20
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/dgiot/speedmonitoring/databinding/FragmentHomeBinding;

    if-eqz p1, :cond_21

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/FragmentHomeBinding;->llBottomAd:Landroid/widget/LinearLayout;

    goto :goto_11

    :cond_21
    move-object p1, v0

    :goto_11
    if-nez p1, :cond_22

    goto :goto_13

    :cond_22
    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_13

    .line 1530
    :cond_23
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/dgiot/speedmonitoring/databinding/FragmentHomeBinding;

    if-eqz p1, :cond_24

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/FragmentHomeBinding;->llBottomAd:Landroid/widget/LinearLayout;

    goto :goto_12

    :cond_24
    move-object p1, v0

    :goto_12
    if-nez p1, :cond_25

    goto :goto_13

    :cond_25
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1533
    :goto_13
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->TAG:Ljava/lang/String;

    iget v5, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->upLoadListNum:I

    invoke-static {}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getDeviceList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v7, "loadDevice:getDeviceList:"

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v5, "    "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1534
    iget p1, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->upLoadListNum:I

    invoke-static {}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getDeviceList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-eq p1, v5, :cond_2b

    .line 1536
    iget p1, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->upLoadListNum:I

    if-ne p1, v1, :cond_29

    .line 1537
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/dgiot/speedmonitoring/databinding/FragmentHomeBinding;

    if-eqz p1, :cond_26

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/FragmentHomeBinding;->llBottomAd:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_26

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1538
    :cond_26
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/dgiot/speedmonitoring/databinding/FragmentHomeBinding;

    if-eqz p1, :cond_27

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/FragmentHomeBinding;->llBottomAd:Landroid/widget/LinearLayout;

    goto :goto_14

    :cond_27
    move-object p1, v0

    :goto_14
    if-nez p1, :cond_28

    goto :goto_15

    :cond_28
    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1539
    :goto_15
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->nativeAdList:[Ljava/lang/Object;

    aput-object v0, p1, v2

    .line 1542
    :cond_29
    invoke-static {}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getDeviceList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->upLoadListNum:I

    if-ne p1, v1, :cond_2b

    .line 1545
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->nativeAdList:[Ljava/lang/Object;

    aput-object v0, p1, v2

    .line 1546
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->deviceVideoAdapter:Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;

    if-nez p1, :cond_2a

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_16

    :cond_2a
    move-object v0, p1

    :goto_16
    invoke-virtual {v0}, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->removeAdView()V

    .line 1551
    :cond_2b
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->updateAdRechargeHintView()V

    .line 1552
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "loadDevice:requestAd:loadAd()1"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1553
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->preploadAd()V

    .line 1554
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "loadDevice:requestAd:loadAd()2"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1557
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->checkHintAdWhenBindDevice()V

    .line 1559
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->showGifHintLogic()V

    goto :goto_1a

    .line 1563
    :cond_2c
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/dgiot/speedmonitoring/databinding/FragmentHomeBinding;

    if-eqz p1, :cond_2d

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/FragmentHomeBinding;->flAdContent:Landroid/widget/FrameLayout;

    goto :goto_17

    :cond_2d
    move-object p1, v0

    :goto_17
    if-nez p1, :cond_2e

    goto :goto_18

    :cond_2e
    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1564
    :goto_18
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/dgiot/speedmonitoring/databinding/FragmentHomeBinding;

    if-eqz p1, :cond_2f

    iget-object p1, p1, Lcom/dgiot/speedmonitoring/databinding/FragmentHomeBinding;->llBottomAd:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_2f

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1565
    :cond_2f
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/dgiot/speedmonitoring/databinding/FragmentHomeBinding;

    if-eqz p1, :cond_30

    iget-object v0, p1, Lcom/dgiot/speedmonitoring/databinding/FragmentHomeBinding;->llBottomAd:Landroid/widget/LinearLayout;

    :cond_30
    if-nez v0, :cond_31

    goto :goto_19

    :cond_31
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1566
    :goto_19
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->updateAdData()V

    .line 1569
    :goto_1a
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->showInterstitial()V

    .line 1570
    iget-boolean p1, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->hasLoadVideoFileDownService:Z

    if-nez p1, :cond_34

    .line 1571
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/dgiot/speedmonitoring/service/VideoFileListDownService;->startLoadVideo(Landroid/content/Context;)V

    .line 1572
    iput-boolean v1, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->hasLoadVideoFileDownService:Z

    .line 1576
    :try_start_0
    invoke-static {}, Lcom/dgiot/speedmonitoring/iot/DGIotClientManager;->getInstance()Lcom/dgiot/speedmonitoring/iot/DGIotClientManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/dgiot/speedmonitoring/iot/DGIotClientManager;->selectConnectClient()Lcom/dgiot/speedmonitoring/iot/DGIotClient;

    move-result-object p1

    if-nez p1, :cond_32

    const-wide/16 v0, 0x320

    goto :goto_1b

    :cond_32
    const-wide/16 v0, 0x0

    .line 1579
    :goto_1b
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_33

    new-instance v2, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment$$ExternalSyntheticLambda19;

    invoke-direct {v2, p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment$$ExternalSyntheticLambda19;-><init>(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;)V

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1595
    :catch_0
    :cond_33
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/dgiot/speedmonitoring/service/LowPowerDeviceService;->startLoopTask(Landroid/content/Context;)V

    :cond_34
    return-void
.end method

.method private static final loadDevice$lambda$35$lambda$30(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;)V
    .locals 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1431
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->TAG:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->hasGetSubdeviceState:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-static {}, Lcom/dgiot/speedmonitoring/DGConfiguration;->isHaveDeviceHaveInitState()Z

    move-result v3

    xor-int/2addr v3, v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "loadDevice:requestSetHaveDeviceHaveInitState = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1432
    iget-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->hasGetSubdeviceState:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/dgiot/speedmonitoring/DGConfiguration;->isHaveDeviceHaveInitState()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1433
    invoke-static {}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getDeviceList()Ljava/util/List;

    move-result-object v0

    .line 1434
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;

    .line 1435
    invoke-virtual {v1}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getSn()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getDeviceHaveInitState(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1437
    invoke-virtual {v1}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getSn()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/dgiot/speedmonitoring/DGConfiguration;->saveDeviceState(Ljava/lang/String;Z)V

    .line 1438
    invoke-virtual {v1}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getSn()Ljava/lang/String;

    move-result-object v1

    const-string v3, "getSn(...)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "0"

    invoke-direct {p0, v1, v3}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->updateOnlineState(Ljava/lang/String;Ljava/lang/String;)V

    .line 1439
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->updateDeviceStatus()V

    goto :goto_0

    .line 1443
    :cond_1
    iput-boolean v2, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->hasGetSubdeviceState:Z

    return-void
.end method

.method private static final loadDevice$lambda$35$lambda$32(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 11

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$snList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1454
    invoke-static {}, Lcom/dgiot/speedmonitoring/iot/DGIotClientManager;->getInstance()Lcom/dgiot/speedmonitoring/iot/DGIotClientManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dgiot/speedmonitoring/iot/DGIotClientManager;->connect()V

    const/4 v0, 0x1

    .line 1455
    sput-boolean v0, Lcom/dgiot/speedmonitoring/DGConfiguration;->firstConnect:Z

    .line 1456
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->deviceVideoAdapter:Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;

    const/4 v2, 0x0

    const-string v3, "deviceVideoAdapter"

    if-nez v1, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    invoke-virtual {v1}, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->getData()Ljava/util/List;

    move-result-object v1

    const-string v4, "getData(...)"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Iterable;

    .line 2901
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v7, v5, 0x1

    if-gez v5, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_1
    check-cast v6, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;

    .line 1458
    iget-object v8, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v6}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getSn()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1459
    iget-boolean v8, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->firstLoad:Z

    if-eqz v8, :cond_2

    .line 1460
    invoke-virtual {v6, v0}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->setStatus(I)V

    .line 1461
    iput-boolean v4, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->firstLoad:Z

    .line 1464
    :cond_2
    iget-object v8, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->TAG:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->getDelayTime(I)J

    move-result-wide v9

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "loadDevice:requestServerAddressLog time "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    const-wide/16 v8, 0xc8

    .line 1465
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V

    .line 1466
    iget-object v5, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v6}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getIccid()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getOwned()I

    move-result v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "loadDevice:deviceVideoAdapters value1="

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "/"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1467
    invoke-virtual {v6}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getSn()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/dgiot/speedmonitoring/util/DeviceInfoUtil;->isWifiDevice(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1468
    invoke-virtual {v6}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getSn()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->requestCardState(Ljava/lang/String;)V

    .line 1470
    :cond_3
    iget-object v5, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->TAG:Ljava/lang/String;

    iget-boolean v8, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->isRefreshYunInfo:Z

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, "loadDevice:refreshInfo:"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1471
    iget-boolean v5, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->isRefreshYunInfo:Z

    if-nez v5, :cond_4

    sget-boolean v5, Lcom/dgiot/speedmonitoring/DGConfiguration;->isBuyYun:Z

    if-eqz v5, :cond_6

    .line 1472
    :cond_4
    invoke-virtual {v6}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getSn()Ljava/lang/String;

    move-result-object v5

    const-string v6, "getSn(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->deviceVideoAdapter:Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;

    if-nez v6, :cond_5

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v2

    :cond_5
    invoke-virtual {v6}, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->getData()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {p0, v5, v6}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->refreshInfo(Ljava/lang/String;I)V

    :cond_6
    move v5, v7

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method private static final loadDevice$lambda$35$lambda$34(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;)V
    .locals 6

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1580
    invoke-static {}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getDeviceList()Ljava/util/List;

    move-result-object v0

    const-string v1, "getDeviceList(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    .line 2903
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;

    .line 1581
    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getSn()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "loadDevice:saveTFInfo>>>>"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1582
    invoke-virtual {v1}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getSn()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/dgiot/speedmonitoring/DGConfiguration;->saveTFInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1586
    invoke-virtual {v1}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getSn()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getDeviceState(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1587
    invoke-static {}, Lcom/dgiot/speedmonitoring/iot/DGIotClientManager;->getInstance()Lcom/dgiot/speedmonitoring/iot/DGIotClientManager;

    move-result-object v2

    invoke-virtual {v1}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getSn()Ljava/lang/String;

    move-result-object v3

    .line 1588
    sget-object v4, Lcom/dgiot/speedmonitoring/repository/DGSocketRepository;->Companion:Lcom/dgiot/speedmonitoring/repository/DGSocketRepository$Companion;

    invoke-virtual {v1}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getSn()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v5, 0xa

    invoke-virtual {v4, v1, v5}, Lcom/dgiot/speedmonitoring/repository/DGSocketRepository$Companion;->getTFInfoParam(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1587
    invoke-virtual {v2, v3, v1}, Lcom/dgiot/speedmonitoring/iot/DGIotClientManager;->send(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final loadTopSlideView()V
    .locals 0

    return-void
.end method


.method private final openNotificationSetting()V
    .locals 4

    .line 987
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 988
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0x1a

    const-string v3, "android.settings.APP_NOTIFICATION_SETTINGS"

    if-lt v1, v2, :cond_0

    .line 989
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.provider.extra.APP_PACKAGE"

    .line 990
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 993
    :cond_0
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "app_package"

    .line 994
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "app_uid"

    .line 995
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1002
    :goto_0
    invoke-virtual {p0, v0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void
.end method

.method private final openNotificationsDialog(Ljava/lang/String;Z)V
    .locals 11

    .line 1011
    iget-object p2, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->notificationsDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-nez p2, :cond_1

    .line 1012
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 1013
    new-instance v2, Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-direct {v2, p2, v1, v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog;-><init>(Landroid/content/Context;Lcom/afollestad/materialdialogs/DialogBehavior;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1014
    sget p2, Lcom/dgiot/speedmonitoring/R$layout;->dialog_notification_setting:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x20

    const/4 v10, 0x0

    .line 1013
    invoke-static/range {v2 .. v10}, Lcom/afollestad/materialdialogs/customview/DialogCustomViewExtKt;->customView$default(Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/lang/Integer;Landroid/view/View;ZZZZILjava/lang/Object;)Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, v1

    .line 1012
    :goto_0
    iput-object p2, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->notificationsDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 1023
    :cond_1
    iget-object p2, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->notificationsDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    if-eqz p2, :cond_2

    invoke-static {p2}, Lcom/afollestad/materialdialogs/customview/DialogCustomViewExtKt;->getCustomView(Lcom/afollestad/materialdialogs/MaterialDialog;)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_2

    sget v2, Lcom/dgiot/speedmonitoring/R$id;->tv_content:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    goto :goto_1

    :cond_2
    move-object p2, v1

    :goto_1
    if-nez p2, :cond_3

    goto :goto_2

    .line 1025
    :cond_3
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1028
    :goto_2
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->notificationsDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    if-eqz p1, :cond_4

    invoke-static {p1}, Lcom/afollestad/materialdialogs/customview/DialogCustomViewExtKt;->getCustomView(Lcom/afollestad/materialdialogs/MaterialDialog;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_4

    sget p2, Lcom/dgiot/speedmonitoring/R$id;->tv_dialog_no:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    goto :goto_3

    :cond_4
    move-object p1, v1

    :goto_3
    if-eqz p1, :cond_5

    .line 1029
    new-instance p2, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment$$ExternalSyntheticLambda22;

    invoke-direct {p2, p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment$$ExternalSyntheticLambda22;-><init>(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1033
    :cond_5
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->notificationsDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    if-eqz p1, :cond_6

    invoke-static {p1}, Lcom/afollestad/materialdialogs/customview/DialogCustomViewExtKt;->getCustomView(Lcom/afollestad/materialdialogs/MaterialDialog;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_6

    sget p2, Lcom/dgiot/speedmonitoring/R$id;->tv_dialog_ok:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    goto :goto_4

    :cond_6
    move-object p1, v1

    :goto_4
    if-eqz p1, :cond_7

    .line 1034
    new-instance p2, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment$$ExternalSyntheticLambda23;

    invoke-direct {p2, p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment$$ExternalSyntheticLambda23;-><init>(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1039
    :cond_7
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->notificationsDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    const/4 p2, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/afollestad/materialdialogs/MaterialDialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_8

    move p1, p2

    goto :goto_5

    :cond_8
    move p1, v2

    :goto_5
    if-eqz p1, :cond_b

    .line 1040
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->notificationsDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    if-eqz p1, :cond_b

    const/high16 v3, 0x41a00000    # 20.0f

    .line 1041
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {p1, v3, v1, v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog;->cornerRadius$default(Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/lang/Float;Ljava/lang/Integer;ILjava/lang/Object;)Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 1042
    invoke-virtual {p1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog;->cancelable(Z)Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 1044
    invoke-virtual {p1}, Lcom/afollestad/materialdialogs/MaterialDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 1049
    invoke-virtual {v0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const/high16 v3, 0x42a00000    # 80.0f

    .line 1046
    invoke-static {p2, v3, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    float-to-int p2, p2

    .line 1052
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v1, 0x11

    .line 1054
    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    neg-int p2, p2

    .line 1056
    iput p2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    move-object v1, v2

    .line 1052
    :cond_9
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2879
    :cond_a
    invoke-virtual {p1}, Lcom/afollestad/materialdialogs/MaterialDialog;->show()V

    :cond_b
    return-void
.end method

.method private static final openNotificationsDialog$lambda$17(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1030
    iget-object p0, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->notificationsDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/MaterialDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private static final openNotificationsDialog$lambda$18(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1035
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->openNotificationSetting()V

    .line 1036
    iget-object p0, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->notificationsDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/MaterialDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private final parseBannerList(Ljava/lang/String;)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/dgiot/speedmonitoring/bean/BannerItem;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "null"

    .line 2798
    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v4

    :goto_1
    if-eqz v2, :cond_2

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 2800
    :cond_2
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "data"

    .line 2801
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_3
    const-string v5, "code"

    .line 2802
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    const/16 v5, 0xc8

    if-ne v2, v5, :cond_9

    .line 2803
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/List;

    .line 2804
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    move v6, v3

    :goto_2
    if-ge v6, v5, :cond_a

    .line 2805
    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    if-nez v7, :cond_4

    goto :goto_7

    :cond_4
    const-string v8, "text"

    .line 2808
    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    xor-int/2addr v9, v4

    const/4 v10, 0x0

    if-eqz v9, :cond_5

    move-object v12, v8

    goto :goto_3

    :cond_5
    move-object v12, v10

    :goto_3
    const-string/jumbo v8, "url"

    .line 2809
    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v9, v8

    check-cast v9, Ljava/lang/CharSequence;

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-lez v9, :cond_6

    move v9, v4

    goto :goto_4

    :cond_6
    move v9, v3

    :goto_4
    if-eqz v9, :cond_7

    move v9, v4

    goto :goto_5

    :cond_7
    move v9, v3

    :goto_5
    if-eqz v9, :cond_8

    move-object v13, v8

    goto :goto_6

    :cond_8
    move-object v13, v10

    :goto_6
    const-string v8, "id"

    .line 2810
    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v8, "type"

    .line 2811
    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v8, "iurl"

    .line 2812
    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 2807
    new-instance v7, Lcom/dgiot/speedmonitoring/bean/BannerItem;

    move-object v11, v7

    invoke-direct/range {v11 .. v16}, Lcom/dgiot/speedmonitoring/bean/BannerItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2806
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 2819
    :cond_9
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    .line 2823
    :catch_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    :cond_a
    :goto_8
    return-object v2
.end method

.method private final parseGoWeiXinContacts(Ljava/lang/String;)V
    .locals 6

    const-string v0, "openAfter"

    .line 322
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "data"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 323
    check-cast p1, Ljava/lang/CharSequence;

    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {p1, v2, v5, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "2"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 324
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->goAiWeb()V

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "wxId"

    .line 327
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "wxUrl"

    .line 328
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 329
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-le v1, v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_1

    .line 330
    invoke-static {}, Lcom/dgiot/speedmonitoring/tencent/WXSDKManager;->getInstance()Lcom/dgiot/speedmonitoring/tencent/WXSDKManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v3, Lcom/dgiot/speedmonitoring/databinding/FragmentHomeBinding;

    invoke-virtual {v3}, Lcom/dgiot/speedmonitoring/databinding/FragmentHomeBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v1, v2, p1, v0, v3}, Lcom/dgiot/speedmonitoring/tencent/WXSDKManager;->goWeiXinContacts(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V

    goto :goto_0

    .line 333
    :cond_1
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->goCustomerNewWeb()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 340
    :catch_0
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->goCustomerNewWeb()V

    :goto_0
    return-void
.end method

.method private static final preploadAd$lambda$15(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 817
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->loadAd()V

    return-void
.end method

.method private final refreshInfo(Ljava/lang/String;I)V
    .locals 2

    .line 2250
    iget v0, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->loadYunInfoNum:I

    if-lt v0, p2, :cond_0

    const/4 p1, 0x0

    .line 2251
    iput p1, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->loadYunInfoNum:I

    .line 2252
    iput-boolean p1, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->isRefreshYunInfo:Z

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 2255
    iput v0, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->loadYunInfoNum:I

    .line 2256
    sget-object v0, Lcom/dgiot/speedmonitoring/repository/DGApiRepository;->INSTANCE:Lcom/dgiot/speedmonitoring/repository/DGApiRepository;

    new-instance v1, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment$refreshInfo$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment$refreshInfo$1;-><init>(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;Ljava/lang/String;I)V

    check-cast v1, Lcom/dgiot/speedmonitoring/http/ResponseCallBack;

    invoke-virtual {v0, p1, v1}, Lcom/dgiot/speedmonitoring/repository/DGApiRepository;->requestCloudInfo2(Ljava/lang/String;Lcom/dgiot/speedmonitoring/http/ResponseCallBack;)V

    return-void
.end method

.method private final requestAllUpdateDeviceToken(Ljava/lang/String;)V
    .locals 4

    .line 1687
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "requestUpdateDeviceToken  nowToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1688
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 1689
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->deviceVideoAdapter:Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "deviceVideoAdapter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    invoke-virtual {v1}, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->getData()Ljava/util/List;

    move-result-object v1

    const-string v3, "getData(...)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Iterable;

    .line 2891
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;

    .line 1690
    invoke-virtual {v3}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getSn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 1692
    :cond_1
    sget-object v1, Lcom/dgiot/speedmonitoring/repository/DGApiRepository;->INSTANCE:Lcom/dgiot/speedmonitoring/repository/DGApiRepository;

    invoke-virtual {v1, p1, v0, v2}, Lcom/dgiot/speedmonitoring/repository/DGApiRepository;->requestUpdateDeviceToken(Ljava/lang/String;Lorg/json/JSONArray;Lcom/dgiot/speedmonitoring/http/ResponseCallBack;)V

    return-void
.end method

.method private final requestCardS(Ljava/lang/String;)V
    .locals 2

    .line 1251
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "requestCardS:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1253
    sget-object v0, Lcom/dgiot/speedmonitoring/repository/DGApiRepository;->INSTANCE:Lcom/dgiot/speedmonitoring/repository/DGApiRepository;

    new-instance v1, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment$requestCardS$1$1;

    invoke-direct {v1, p0, p1}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment$requestCardS$1$1;-><init>(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;Ljava/lang/String;)V

    check-cast v1, Lcom/dgiot/speedmonitoring/http/ResponseCallBack;

    invoke-virtual {v0, p1, v1}, Lcom/dgiot/speedmonitoring/repository/DGApiRepository;->requestCardState(Ljava/lang/String;Lcom/dgiot/speedmonitoring/http/ResponseCallBack;)V

    :cond_0
    return-void
.end method

.method private final requestCardState(Ljava/lang/String;)V
    .locals 2

    .line 1246
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "requestCardState:1."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1247
    invoke-direct {p0, p1}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->requestCardS(Ljava/lang/String;)V

    return-void
.end method

.method private final requestCleanDeviceTokenBySn(Ljava/lang/String;)V
    .locals 3

    .line 1696
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 1697
    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1698
    sget-object p1, Lcom/dgiot/speedmonitoring/repository/DGApiRepository;->INSTANCE:Lcom/dgiot/speedmonitoring/repository/DGApiRepository;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2}, Lcom/dgiot/speedmonitoring/repository/DGApiRepository;->requestUpdateDeviceToken(Ljava/lang/String;Lorg/json/JSONArray;Lcom/dgiot/speedmonitoring/http/ResponseCallBack;)V

    return-void
.end method

.method private final requestGetAdState()V
    .locals 2

    .line 891
    invoke-static {}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getAdInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getAdInfo(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-void

    .line 894
    :cond_1
    sget-object v0, Lcom/dgiot/speedmonitoring/repository/DGApiRepository;->INSTANCE:Lcom/dgiot/speedmonitoring/repository/DGApiRepository;

    new-instance v1, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment$requestGetAdState$1;

    invoke-direct {v1}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment$requestGetAdState$1;-><init>()V

    check-cast v1, Lcom/dgiot/speedmonitoring/http/ResponseCallBack;

    invoke-virtual {v0, v1}, Lcom/dgiot/speedmonitoring/repository/DGApiRepository;->requestGetAdState(Lcom/dgiot/speedmonitoring/http/ResponseCallBack;)V

    return-void
.end method

.method private final requestGifList()V
    .locals 2

    .line 2646
    sget-object v0, Lcom/dgiot/speedmonitoring/repository/DGApiRepository;->INSTANCE:Lcom/dgiot/speedmonitoring/repository/DGApiRepository;

    new-instance v1, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment$requestGifList$1;

    invoke-direct {v1, p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment$requestGifList$1;-><init>(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;)V

    check-cast v1, Lcom/dgiot/speedmonitoring/http/ResponseCallBack;

    invoke-virtual {v0, v1}, Lcom/dgiot/speedmonitoring/repository/DGApiRepository;->requestGifList(Lcom/dgiot/speedmonitoring/http/ResponseCallBack;)V

    return-void
.end method

.method private final requestNotificationState(ZI)V
    .locals 2

    .line 1176
    invoke-static {}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getLoginAccountInfo()[Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    aget-object p2, p2, v0

    .line 1177
    sget-object v0, Lcom/dgiot/speedmonitoring/repository/DGApiPushRepository;->INSTANCE:Lcom/dgiot/speedmonitoring/repository/DGApiPushRepository;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v1, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment$requestNotificationState$1;

    invoke-direct {v1, p0, p1}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment$requestNotificationState$1;-><init>(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;Z)V

    check-cast v1, Lcom/dgiot/speedmonitoring/http/ResponseCallBack;

    invoke-virtual {v0, p2, p1, v1}, Lcom/dgiot/speedmonitoring/repository/DGApiPushRepository;->requestUserNotifySet(Ljava/lang/String;ZLcom/dgiot/speedmonitoring/http/ResponseCallBack;)V

    return-void
.end method

.method private final requestPushUserRecord()V
    .locals 5

    .line 1222
    iget-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->loadPushUserRecord:Z

    if-eqz v0, :cond_0

    .line 1223
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MyWebSocketClient requestUserRecord return"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1226
    iput-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->loadPushUserRecord:Z

    .line 1227
    invoke-static {}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getLoginAccountInfo()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_1

    .line 1229
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "MyWebSocketClient requestUserRecord3="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1230
    sget-object v1, Lcom/dgiot/speedmonitoring/repository/DGApiPushRepository;->INSTANCE:Lcom/dgiot/speedmonitoring/repository/DGApiPushRepository;

    const-string v2, "element"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getDeviceManufactureName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getDeviceManufactureName(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getDeviceManufactureToken()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getDeviceManufactureToken(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment$requestPushUserRecord$1$1;

    invoke-direct {v4}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment$requestPushUserRecord$1$1;-><init>()V

    check-cast v4, Lcom/dgiot/speedmonitoring/http/ResponseCallBack;

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/dgiot/speedmonitoring/repository/DGApiPushRepository;->requestUserRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dgiot/speedmonitoring/http/ResponseCallBack;)V

    :cond_1
    return-void
.end method

.method private final requestUpdateDeviceName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 918
    sget-object v0, Lcom/dgiot/speedmonitoring/repository/DGApiRepository;->INSTANCE:Lcom/dgiot/speedmonitoring/repository/DGApiRepository;

    new-instance v1, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment$requestUpdateDeviceName$1;

    invoke-direct {v1, p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment$requestUpdateDeviceName$1;-><init>(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;)V

    check-cast v1, Lcom/dgiot/speedmonitoring/http/ResponseCallBack;

    invoke-virtual {v0, p1, p2, v1}, Lcom/dgiot/speedmonitoring/repository/DGApiRepository;->requestUpdateDeviceName(Ljava/lang/String;Ljava/lang/String;Lcom/dgiot/speedmonitoring/http/ResponseCallBack;)V

    return-void
.end method

.method public static final runCheckVideoFileDbData()V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->Companion:Lcom/dgiot/speedmonitoring/ui/home/HomeFragment$Companion;

    invoke-virtual {v0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment$Companion;->runCheckVideoFileDbData()V

    return-void
.end method

.method private final runSecretKey()V
    .locals 2

    .line 2664
    sget-object v0, Lcom/dgiot/speedmonitoring/repository/DGApiRepository;->INSTANCE:Lcom/dgiot/speedmonitoring/repository/DGApiRepository;

    new-instance v1, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment$runSecretKey$1;

    invoke-direct {v1, p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment$runSecretKey$1;-><init>(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;)V

    check-cast v1, Lcom/dgiot/speedmonitoring/http/ResponseCallBack;

    invoke-virtual {v0, v1}, Lcom/dgiot/speedmonitoring/repository/DGApiRepository;->requestSecretKey(Lcom/dgiot/speedmonitoring/http/ResponseCallBack;)V

    return-void
.end method

.method private final setNotificationState(Z)V
    .locals 1

    .line 1064
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentHomeBinding;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentHomeBinding;->ivNotification:Landroid/widget/ImageView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    :goto_1
    return-void
.end method

.method private final setupBanner()V
    .locals 0

    return-void
.end method


.method private final showAdRechargeHint()V
    .locals 7

    .line 2365
    :try_start_0
    iget-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->isShowHintFlag:Z

    if-eqz v0, :cond_0

    return-void

    .line 2369
    :cond_0
    invoke-static {}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getDeviceList()Ljava/util/List;

    move-result-object v0

    .line 2371
    invoke-static {}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getAdRechargeDialogHintState()Ljava/lang/String;

    move-result-object v1

    .line 2372
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;

    invoke-virtual {v0}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getSn()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dgiot/speedmonitoring/util/YunInfoUtil;->isYunOk(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2373
    move-object v0, v1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {}, Lcom/common/util/assist/DateUtil;->getYmd()Ljava/lang/String;

    move-result-object v0

    const-string v3, "getYmd(...)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v1, v0, v2, v3, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 2377
    iput-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->isShowHintFlag:Z

    .line 2378
    invoke-static {v0}, Lcom/dgiot/speedmonitoring/DGConfiguration;->saveAdRechargeDialogHintState(Z)V

    .line 2379
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ly_admInterstitialClickListener"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "showAdRechargeHint"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2380
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->getBase()Lcom/dgiot/speedmonitoring/base/Base;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v2, "requireActivity(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/content/Context;

    new-instance v2, Lcom/dgiot/speedmonitoring/ui/pop/CommonCenterPopup;

    .line 2381
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    .line 2382
    sget v4, Lcom/dgiot/speedmonitoring/R$string;->ad_desc_recharge_dialog_title:I

    invoke-virtual {p0, v4}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2383
    sget v5, Lcom/dgiot/speedmonitoring/R$string;->ad_desc_recharge_dialog_content:I

    invoke-virtual {p0, v5}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2384
    new-instance v6, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment$showAdRechargeHint$1;

    invoke-direct {v6, p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment$showAdRechargeHint$1;-><init>(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;)V

    check-cast v6, Lcom/dgiot/speedmonitoring/ui/pop/CommonCenterPopup$CenterDialogClickListener;

    .line 2380
    invoke-direct {v2, v3, v4, v5, v6}, Lcom/dgiot/speedmonitoring/ui/pop/CommonCenterPopup;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/dgiot/speedmonitoring/ui/pop/CommonCenterPopup$CenterDialogClickListener;)V

    .line 2407
    sget v3, Lcom/dgiot/speedmonitoring/R$string;->ad_desc_recharge_dialog_ok:I

    invoke-virtual {p0, v3}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "#1296db"

    .line 2408
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    .line 2406
    invoke-virtual {v2, v3, v4}, Lcom/dgiot/speedmonitoring/ui/pop/CommonCenterPopup;->setRightClickViewText(Ljava/lang/String;I)Lcom/dgiot/speedmonitoring/ui/pop/CommonCenterPopup;

    move-result-object v2

    .line 2410
    sget v3, Lcom/dgiot/speedmonitoring/R$string;->ad_desc_recharge_dialog_no:I

    invoke-virtual {p0, v3}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/dgiot/speedmonitoring/ui/pop/CommonCenterPopup;->showLeftClickView(Ljava/lang/String;)Lcom/dgiot/speedmonitoring/ui/pop/CommonCenterPopup;

    move-result-object v2

    const-string v3, "showLeftClickView(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2380
    invoke-virtual {v0, v1, v2}, Lcom/dgiot/speedmonitoring/base/Base;->showCommonCenterPop(Landroid/content/Context;Lcom/dgiot/speedmonitoring/ui/pop/CommonCenterPopup;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    :catch_0
    :cond_2
    :goto_0
    return-void
.end method

.method private final showGifDailog(Ljava/lang/String;)V
    .locals 4

    .line 2696
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "showGifDailog:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 2697
    new-instance v0, Lcom/dgiot/speedmonitoring/ui/pop/GifHintPopup;

    .line 2698
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 2699
    new-instance v2, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment$showGifDailog$noTFHintPopup$1;

    invoke-direct {v2, p0, p1}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment$showGifDailog$noTFHintPopup$1;-><init>(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;Ljava/lang/String;)V

    check-cast v2, Lcom/dgiot/speedmonitoring/ui/pop/GifHintPopup$CenterDialogClickListener;

    .line 2697
    invoke-direct {v0, v1, v2}, Lcom/dgiot/speedmonitoring/ui/pop/GifHintPopup;-><init>(Landroid/content/Context;Lcom/dgiot/speedmonitoring/ui/pop/GifHintPopup$CenterDialogClickListener;)V

    .line 2715
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->gifHintPop:Lcom/lxj/xpopup/core/BasePopupView;

    if-nez p1, :cond_0

    .line 2716
    new-instance p1, Lcom/dgiot/speedmonitoring/util/XPopupUtil;

    invoke-direct {p1}, Lcom/dgiot/speedmonitoring/util/XPopupUtil;-><init>()V

    .line 2717
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v2, "requireActivity(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/content/Context;

    .line 2718
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Lcom/dgiot/speedmonitoring/databinding/FragmentHomeBinding;

    invoke-virtual {v2}, Lcom/dgiot/speedmonitoring/databinding/FragmentHomeBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v2

    const-string v3, "getRoot(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View;

    .line 2719
    check-cast v0, Lcom/lxj/xpopup/core/BasePopupView;

    .line 2716
    invoke-virtual {p1, v1, v2, v0}, Lcom/dgiot/speedmonitoring/util/XPopupUtil;->showCommonCenterPop(Landroid/content/Context;Landroid/view/View;Lcom/lxj/xpopup/core/BasePopupView;)Lcom/lxj/xpopup/core/BasePopupView;

    move-result-object p1

    iput-object p1, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->gifHintPop:Lcom/lxj/xpopup/core/BasePopupView;

    .line 2722
    :cond_0
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->gifHintPop:Lcom/lxj/xpopup/core/BasePopupView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/lxj/xpopup/core/BasePopupView;->show()Lcom/lxj/xpopup/core/BasePopupView;

    :cond_1
    return-void
.end method

.method private final showGifHintLogic()V
    .locals 1

    .line 2631
    iget-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->isShowGifHintLogic:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/dgiot/speedmonitoring/DGConfiguration;->isNeedLoadGifList:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2634
    iput-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->isShowGifHintLogic:Z

    const/4 v0, 0x0

    .line 2635
    sput-boolean v0, Lcom/dgiot/speedmonitoring/DGConfiguration;->isNeedLoadGifList:Z

    .line 2636
    invoke-static {}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getDeviceList()Ljava/util/List;

    move-result-object v0

    .line 2637
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 2638
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->requestGifList()V

    :cond_1
    return-void
.end method

.method private final showHintUnOnlineDialog(Ljava/lang/String;)V
    .locals 6

    .line 2288
    iget-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->isShowHint:Z

    if-eqz v0, :cond_0

    .line 2289
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "showHintUnOnlineDialog re click return"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    return-void

    .line 2292
    :cond_0
    invoke-static {p1}, Lcom/dgiot/speedmonitoring/util/DeviceInfoUtil;->isWifiDevice(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget p1, Lcom/dgiot/speedmonitoring/R$string;->bind_device_unOnline_hint_wifi:I

    goto :goto_0

    :cond_1
    sget p1, Lcom/dgiot/speedmonitoring/R$string;->bind_device_unOnline_hint_4g:I

    :goto_0
    invoke-virtual {p0, p1}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 2293
    iput-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->isShowHint:Z

    .line 2294
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->getBase()Lcom/dgiot/speedmonitoring/base/Base;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2295
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/dgiot/speedmonitoring/ui/pop/CommonCenterPopup;

    .line 2296
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    .line 2297
    sget v4, Lcom/dgiot/speedmonitoring/R$string;->bind_device_unOnline_hint_title:I

    invoke-virtual {p0, v4}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2299
    new-instance v5, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment$showHintUnOnlineDialog$1;

    invoke-direct {v5, p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment$showHintUnOnlineDialog$1;-><init>(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;)V

    check-cast v5, Lcom/dgiot/speedmonitoring/ui/pop/CommonCenterPopup$CenterDialogClickListener;

    .line 2295
    invoke-direct {v2, v3, v4, p1, v5}, Lcom/dgiot/speedmonitoring/ui/pop/CommonCenterPopup;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/dgiot/speedmonitoring/ui/pop/CommonCenterPopup$CenterDialogClickListener;)V

    const/4 p1, 0x3

    .line 2315
    invoke-virtual {v2, p1}, Lcom/dgiot/speedmonitoring/ui/pop/CommonCenterPopup;->setContentGravityLeft(I)Lcom/dgiot/speedmonitoring/ui/pop/CommonCenterPopup;

    move-result-object p1

    const-string v2, "setContentGravityLeft(...)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2294
    invoke-virtual {v0, v1, p1}, Lcom/dgiot/speedmonitoring/base/Base;->showCommonCenterPop(Landroid/content/Context;Lcom/dgiot/speedmonitoring/ui/pop/CommonCenterPopup;)V

    :cond_2
    return-void
.end method

.method private final showNote(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    .line 2170
    new-instance v0, Lcom/dgiot/speedmonitoring/ui/pop/SysNotePopup;

    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment$showNote$notePopup$1;

    invoke-direct {v2, p0, p3}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment$showNote$notePopup$1;-><init>(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;I)V

    check-cast v2, Lcom/dgiot/speedmonitoring/ui/pop/SysNotePopup$CenterDialogClickListener;

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/dgiot/speedmonitoring/ui/pop/SysNotePopup;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/dgiot/speedmonitoring/ui/pop/SysNotePopup$CenterDialogClickListener;)V

    .line 2183
    new-instance p1, Lcom/dgiot/speedmonitoring/util/XPopupUtil;

    invoke-direct {p1}, Lcom/dgiot/speedmonitoring/util/XPopupUtil;-><init>()V

    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "requireContext(...)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p3

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p3, Lcom/dgiot/speedmonitoring/databinding/FragmentHomeBinding;

    invoke-virtual {p3}, Lcom/dgiot/speedmonitoring/databinding/FragmentHomeBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p3

    const-string v1, "getRoot(...)"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Landroid/view/View;

    check-cast v0, Lcom/lxj/xpopup/core/BasePopupView;

    invoke-virtual {p1, p2, p3, v0}, Lcom/dgiot/speedmonitoring/util/XPopupUtil;->showCommonCenterPop(Landroid/content/Context;Landroid/view/View;Lcom/lxj/xpopup/core/BasePopupView;)Lcom/lxj/xpopup/core/BasePopupView;

    move-result-object p1

    iput-object p1, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->notePopupView:Lcom/lxj/xpopup/core/BasePopupView;

    if-eqz p1, :cond_0

    .line 2184
    invoke-virtual {p1}, Lcom/lxj/xpopup/core/BasePopupView;->show()Lcom/lxj/xpopup/core/BasePopupView;

    :cond_0
    return-void
.end method

.method private final showPermissionHint()V
    .locals 5

    .line 2496
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->agreePopup:Lcom/lxj/xpopup/core/BasePopupView;

    if-nez v0, :cond_0

    .line 2497
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/common/util/view/DisplayUtil;->getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 2498
    new-instance v1, Lcom/lxj/xpopup/XPopup$Builder;

    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/lxj/xpopup/XPopup$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lxj/xpopup/XPopup$Builder;->hasShadowBg(Ljava/lang/Boolean;)Lcom/lxj/xpopup/XPopup$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/lxj/xpopup/XPopup$Builder;->dismissOnBackPressed(Ljava/lang/Boolean;)Lcom/lxj/xpopup/XPopup$Builder;

    move-result-object v1

    .line 2499
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lxj/xpopup/XPopup$Builder;->dismissOnTouchOutside(Ljava/lang/Boolean;)Lcom/lxj/xpopup/XPopup$Builder;

    move-result-object v1

    .line 2500
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Lcom/dgiot/speedmonitoring/databinding/FragmentHomeBinding;

    invoke-virtual {v2}, Lcom/dgiot/speedmonitoring/databinding/FragmentHomeBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/lxj/xpopup/XPopup$Builder;->atView(Landroid/view/View;)Lcom/lxj/xpopup/XPopup$Builder;

    move-result-object v1

    .line 2501
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v1, v2}, Lcom/lxj/xpopup/XPopup$Builder;->popupWidth(I)Lcom/lxj/xpopup/XPopup$Builder;

    move-result-object v1

    .line 2502
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v1, v0}, Lcom/lxj/xpopup/XPopup$Builder;->popupHeight(I)Lcom/lxj/xpopup/XPopup$Builder;

    move-result-object v0

    .line 2504
    new-instance v1, Lcom/dgiot/speedmonitoring/ui/pop/PermissionHintPopup;

    .line 2505
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    .line 2506
    sget v3, Lcom/dgiot/speedmonitoring/R$string;->contact_permission_hint1:I

    invoke-virtual {p0, v3}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2507
    new-instance v4, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment$showPermissionHint$1;

    invoke-direct {v4, p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment$showPermissionHint$1;-><init>(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;)V

    check-cast v4, Lcom/dgiot/speedmonitoring/ui/pop/PermissionHintPopup$PrivacyStatementDialogListener;

    .line 2504
    invoke-direct {v1, v2, v3, v4}, Lcom/dgiot/speedmonitoring/ui/pop/PermissionHintPopup;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/dgiot/speedmonitoring/ui/pop/PermissionHintPopup$PrivacyStatementDialogListener;)V

    check-cast v1, Lcom/lxj/xpopup/core/BasePopupView;

    .line 2503
    invoke-virtual {v0, v1}, Lcom/lxj/xpopup/XPopup$Builder;->asCustom(Lcom/lxj/xpopup/core/BasePopupView;)Lcom/lxj/xpopup/core/BasePopupView;

    move-result-object v0

    .line 2498
    iput-object v0, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->agreePopup:Lcom/lxj/xpopup/core/BasePopupView;

    .line 2519
    :cond_0
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->agreePopup:Lcom/lxj/xpopup/core/BasePopupView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/lxj/xpopup/core/BasePopupView;->show()Lcom/lxj/xpopup/core/BasePopupView;

    return-void
.end method

.method private final startAutoScroll()V
    .locals 4

    .line 2857
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->stopAutoScroll()V

    .line 2858
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->bannerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    return-void

    .line 2860
    :cond_0
    new-instance v0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment$startAutoScroll$1;

    invoke-direct {v0, p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment$startAutoScroll$1;-><init>(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;)V

    check-cast v0, Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->autoTask:Ljava/lang/Runnable;

    .line 2868
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->handlerBanner:Landroid/os/Handler;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-wide v2, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->loopTime:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private final stopAutoScroll()V
    .locals 2

    .line 2872
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->autoTask:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->handlerBanner:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, 0x0

    .line 2873
    iput-object v0, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->autoTask:Ljava/lang/Runnable;

    return-void
.end method

.method private final updateAdRechargeHintView()V
    .locals 4

    const/16 v0, 0x8

    .line 2321
    :try_start_0
    sget-boolean v1, Lcom/dgiot/speedmonitoring/DGConfiguration;->showAdRechargeHint:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->deviceVideoAdapter:Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    const-string v3, "deviceVideoAdapter"

    if-nez v1, :cond_0

    :try_start_1
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    invoke-virtual {v1}, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->getData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->deviceVideoAdapter:Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;

    if-nez v1, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    invoke-virtual {v2}, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->getData()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;

    invoke-virtual {v1}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getSn()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dgiot/speedmonitoring/util/YunInfoUtil;->isYunOk(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2322
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Lcom/dgiot/speedmonitoring/databinding/FragmentHomeBinding;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/databinding/FragmentHomeBinding;->rlAdHintRecharge:Landroid/widget/RelativeLayout;


    goto :goto_1

    .line 2325
    :cond_2
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Lcom/dgiot/speedmonitoring/databinding/FragmentHomeBinding;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/databinding/FragmentHomeBinding;->rlAdHintRecharge:Landroid/widget/RelativeLayout;

    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 2329
    :catch_0
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Lcom/dgiot/speedmonitoring/databinding/FragmentHomeBinding;

    iget-object v1, v1, Lcom/dgiot/speedmonitoring/databinding/FragmentHomeBinding;->rlAdHintRecharge:Landroid/widget/RelativeLayout;


    :goto_1
    return-void
.end method

.method private final updateCardExpirationTime(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-string v0, "/"

    .line 1336
    :try_start_0
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->deviceVideoAdapter:Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "deviceVideoAdapter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    invoke-virtual {v1}, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->getData()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    check-cast v1, Ljava/lang/Iterable;

    .line 2881
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :catch_0
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;

    if-eqz v3, :cond_2

    .line 1337
    invoke-virtual {v3}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getSn()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_2
    move-object v4, v2

    :goto_1
    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-static {v4, p1, v5, v6, v2}, Lkotlin/text/StringsKt;->equals$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v4, :cond_1

    .line 1340
    :try_start_1
    iget-object v4, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->TAG:Ljava/lang/String;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getIccid()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_3
    move-object v5, v2

    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "updateCardExpirationTime:/card/query/flow?iccid_deviceinfo->"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1341
    invoke-virtual {v3, p2}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->setCardExpirationTime(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1346
    :cond_4
    :try_start_2
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->updateDeviceStatus()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    return-void
.end method

.method private final updateDeviceNetDBM()V
    .locals 4

    .line 2014
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->deviceVideoAdapter:Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;

    if-nez v0, :cond_0

    const-string v0, "deviceVideoAdapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->getData()Ljava/util/List;

    move-result-object v0

    const-string v1, "getData(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    .line 2893
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;

    .line 2015
    iget-object v2, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->deviceDbm:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getSn()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->setDbm(Ljava/lang/String;)V

    goto :goto_0

    .line 2018
    :cond_1
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->updateDeviceStatus()V

    return-void
.end method

.method private final updateDevicePower(Ljava/lang/String;I)V
    .locals 0

    .line 1360
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->deviceVideoAdapter:Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;

    if-nez p1, :cond_0

    const-string p1, "deviceVideoAdapter"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p1}, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private final updateDeviceStatus()V
    .locals 13

    .line 1366
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->deviceVideoAdapter:Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;

    const-string v1, "deviceVideoAdapter"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-virtual {v0}, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->getData()Ljava/util/List;

    move-result-object v0

    const-string v3, "getData(...)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    .line 2883
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;

    .line 1367
    iget-object v4, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->deviceStatus:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getSn()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1368
    iget-object v5, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getSn()Ljava/lang/String;

    move-result-object v6

    const-string v7, "0"

    const/4 v8, 0x0

    const/4 v9, 0x2

    invoke-static {v4, v7, v8, v9, v2}, Lkotlin/text/StringsKt;->equals$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v10

    const/4 v11, 0x1

    xor-int/2addr v10, v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v12, "updateDeviceStatus->"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "   >"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1369
    invoke-static {v4, v7, v8, v9, v2}, Lkotlin/text/StringsKt;->equals$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1370
    invoke-virtual {v3, v11}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->setStatus(I)V

    goto :goto_0

    :cond_1
    const/4 v4, 0x3

    .line 1373
    invoke-virtual {v3, v4}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->setStatus(I)V

    goto :goto_0

    .line 1381
    :cond_2
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->deviceVideoAdapter:Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;

    if-nez v0, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v2, v0

    :goto_1
    invoke-virtual {v2}, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private final updateDeviceToken()V
    .locals 6

    .line 1669
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "updateDeviceToken start"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1670
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->deviceVideoAdapter:Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;

    if-nez v0, :cond_0

    const-string v0, "deviceVideoAdapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;->getData()Ljava/util/List;

    move-result-object v0

    .line 1671
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/Iterable;

    .line 2889
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;

    .line 1673
    sget-object v2, Lcom/dgiot/speedmonitoring/base/DGApplication;->Companion:Lcom/dgiot/speedmonitoring/base/DGApplication$Companion;

    invoke-virtual {v2}, Lcom/dgiot/speedmonitoring/base/DGApplication$Companion;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/umeng/message/PushAgent;->getInstance(Landroid/content/Context;)Lcom/umeng/message/PushAgent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/umeng/message/PushAgent;->getRegistrationId()Ljava/lang/String;

    move-result-object v2

    .line 1674
    invoke-virtual {v1}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getDeviceToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 1675
    iget-object v4, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getDeviceToken()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "updateDeviceToken value="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "   "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    if-nez v3, :cond_1

    .line 1678
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, v2}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->requestAllUpdateDeviceToken(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private final updateListUpState(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;",
            ">;",
            "Ljava/util/List<",
            "Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;",
            ">;"
        }
    .end annotation

    .line 1386
    :try_start_0
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "updateListUpState==============start"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    if-eqz p2, :cond_2

    .line 1387
    move-object v0, p2

    check-cast v0, Ljava/lang/Iterable;

    .line 2885
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;

    .line 1388
    move-object v2, p0

    check-cast v2, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;

    .line 1389
    move-object v2, p1

    check-cast v2, Ljava/lang/Iterable;

    .line 2886
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;

    .line 1390
    invoke-virtual {v1}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getSn()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getSn()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1391
    invoke-virtual {v3}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->getStatus()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/dgiot/speedmonitoring/bean/DeviceInfoBean;->setStatus(I)V

    goto :goto_0

    .line 1397
    :cond_2
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string/jumbo v0, "updateListUpState==============end"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p2
.end method

.method private final updateOnlineState(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1979
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->deviceStatus:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1980
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->TAG:Ljava/lang/String;

    invoke-static {p1}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getDeviceBaseInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "updateOnlineState deviceSn = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1981
    invoke-static {p1}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getDeviceBaseInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "1"

    if-eqz v0, :cond_0

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1982
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "updateOnlineState getDeviceInfoParam"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1983
    invoke-static {}, Lcom/dgiot/speedmonitoring/iot/DGIotClientManager;->getInstance()Lcom/dgiot/speedmonitoring/iot/DGIotClientManager;

    move-result-object v0

    sget-object v2, Lcom/dgiot/speedmonitoring/repository/DGSocketRepository;->Companion:Lcom/dgiot/speedmonitoring/repository/DGSocketRepository$Companion;

    invoke-virtual {v2, p1}, Lcom/dgiot/speedmonitoring/repository/DGSocketRepository$Companion;->getDeviceInfoParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/dgiot/speedmonitoring/iot/DGIotClientManager;->send(Ljava/lang/String;Ljava/lang/String;)V

    .line 1986
    :cond_0
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->TAG:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->isResume:Z

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    invoke-static {p1}, Lcom/dgiot/speedmonitoring/util/DeviceInfoUtil;->isLowPowerDevices(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, "updateOnlineState:homeState isResume:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "     "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1987
    iget-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->isResume:Z

    if-eqz v0, :cond_3

    .line 1988
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lcom/dgiot/speedmonitoring/DGConfiguration;->beforeLoadVideoStreamParam:I

    const/4 v2, 0x2

    if-ge v0, v2, :cond_2

    invoke-static {p1}, Lcom/dgiot/speedmonitoring/util/DeviceInfoUtil;->isLowPowerDevices(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1989
    sget p1, Lcom/dgiot/speedmonitoring/DGConfiguration;->beforeLoadVideoStreamParam:I

    add-int/2addr p1, v4

    sput p1, Lcom/dgiot/speedmonitoring/DGConfiguration;->beforeLoadVideoStreamParam:I

    .line 1990
    iget-object p1, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->TAG:Ljava/lang/String;

    sget p2, Lcom/dgiot/speedmonitoring/DGConfiguration;->beforeLoadVideoStreamParam:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string/jumbo v0, "updateOnlineState:beforeGetVideoStreamParam-->"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 1993
    :cond_2
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-static {p1}, Lcom/dgiot/speedmonitoring/util/DeviceInfoUtil;->isLowPowerDevices(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 1995
    invoke-static {}, Lcom/dgiot/speedmonitoring/iot/DGIotClientManager;->getInstance()Lcom/dgiot/speedmonitoring/iot/DGIotClientManager;

    move-result-object p2

    sget-object v0, Lcom/dgiot/speedmonitoring/repository/DGSocketRepository;->Companion:Lcom/dgiot/speedmonitoring/repository/DGSocketRepository$Companion;

    invoke-virtual {v0, p1, v4}, Lcom/dgiot/speedmonitoring/repository/DGSocketRepository$Companion;->getVideoStreamParam(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/dgiot/speedmonitoring/iot/DGIotClientManager;->send(Ljava/lang/String;Ljava/lang/String;)V

    .line 1996
    invoke-static {}, Lcom/dgiot/speedmonitoring/iot/DGIotClientManager;->getInstance()Lcom/dgiot/speedmonitoring/iot/DGIotClientManager;

    move-result-object p2

    .line 1997
    sget-object v0, Lcom/dgiot/speedmonitoring/repository/DGSocketRepository;->Companion:Lcom/dgiot/speedmonitoring/repository/DGSocketRepository$Companion;

    invoke-virtual {v0, p1}, Lcom/dgiot/speedmonitoring/repository/DGSocketRepository$Companion;->getLowPowerDeviceBat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1996
    invoke-virtual {p2, p1, v0}, Lcom/dgiot/speedmonitoring/iot/DGIotClientManager;->send(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public final checkBlueDevicePermission()V
    .locals 0

    return-void
.end method

.method public final deleteRecursive(Ljava/io/File;)V
    .locals 4

    const-string v0, "fileOrDirectory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 257
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const-string v1, "listFiles(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 258
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 257
    invoke-virtual {p0, v3}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->deleteRecursive(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 260
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return-void
.end method

.method public final getAdHeadView()Landroid/view/View;
    .locals 1

    .line 797
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->adHeadView:Landroid/view/View;

    return-object v0
.end method

.method public final getCenterPopup()Lcom/lxj/xpopup/core/BasePopupView;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->centerPopup:Lcom/lxj/xpopup/core/BasePopupView;

    return-object v0
.end method

.method public final getDeviceListResult()Lcom/dgiot/speedmonitoring/ui/home/HomePageState$GetDeviceListResult;
    .locals 1

    .line 1408
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->deviceListResult:Lcom/dgiot/speedmonitoring/ui/home/HomePageState$GetDeviceListResult;

    return-object v0
.end method

.method public final getGifHintPop()Lcom/lxj/xpopup/core/BasePopupView;
    .locals 1

    .line 2694
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->gifHintPop:Lcom/lxj/xpopup/core/BasePopupView;

    return-object v0
.end method

.method public final getHasGetSubdeviceState()Z
    .locals 1

    .line 1666
    iget-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->hasGetSubdeviceState:Z

    return v0
.end method

.method public final getHasLoadDeviceVideoFileService()Z
    .locals 1

    .line 1664
    iget-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->hasLoadDeviceVideoFileService:Z

    return v0
.end method

.method public final getHasLoadVideoFileDownService()Z
    .locals 1

    .line 1665
    iget-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->hasLoadVideoFileDownService:Z

    return v0
.end method

.method public final getMAdHintRechargePops()Lcom/lxj/xpopup/core/BasePopupView;
    .locals 1

    .line 2458
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->mAdHintRechargePops:Lcom/lxj/xpopup/core/BasePopupView;

    return-object v0
.end method

.method public final getMobileType()Ljava/lang/String;
    .locals 5

    .line 165
    invoke-static {}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getDeviceManufactureName()Ljava/lang/String;

    move-result-object v0

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "canOpenAppStore:deviceName:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 167
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/CharSequence;

    const-string/jumbo v1, "vivo"

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "5"

    return-object v0

    :cond_0
    const-string v1, "oppo"

    .line 169
    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "4"

    return-object v0

    :cond_1
    const-string/jumbo v1, "xiaomi"

    .line 171
    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "6"

    return-object v0

    :cond_2
    const-string v1, "honor"

    .line 173
    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "3"

    return-object v0

    :cond_3
    const-string v1, "huawei"

    .line 175
    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "2"

    return-object v0

    :cond_4
    const-string v0, ""

    return-object v0
.end method

.method public final getNoTFHintPop()Lcom/lxj/xpopup/core/BasePopupView;
    .locals 1

    .line 2035
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->noTFHintPop:Lcom/lxj/xpopup/core/BasePopupView;

    return-object v0
.end method

.method public final getNotePopupView()Lcom/lxj/xpopup/core/BasePopupView;
    .locals 1

    .line 2168
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->notePopupView:Lcom/lxj/xpopup/core/BasePopupView;

    return-object v0
.end method

.method public final getNotificationsDialog()Lcom/afollestad/materialdialogs/MaterialDialog;
    .locals 1

    .line 1009
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->notificationsDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    return-object v0
.end method

.method public final getShowUpdateNameDialog()Z
    .locals 1

    .line 915
    iget-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->showUpdateNameDialog:Z

    return v0
.end method

.method public final getUpLoadListNum()I
    .locals 1

    .line 1663
    iget v0, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->upLoadListNum:I

    return v0
.end method

.method public bridge synthetic getViewBinding()Landroidx/viewbinding/ViewBinding;
    .locals 1

    .line 145
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->getViewBinding()Lcom/dgiot/speedmonitoring/databinding/FragmentHomeBinding;

    move-result-object v0

    check-cast v0, Landroidx/viewbinding/ViewBinding;

    return-object v0
.end method

.method public getViewBinding()Lcom/dgiot/speedmonitoring/databinding/FragmentHomeBinding;
    .locals 1

    .line 158
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/dgiot/speedmonitoring/databinding/FragmentHomeBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/dgiot/speedmonitoring/databinding/FragmentHomeBinding;

    move-result-object v0

    return-object v0
.end method

.method public final initJGTopAd()V
    .locals 4

    const-string v0, "adverCountLog:"

    .line 294
    :try_start_0
    invoke-static {}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getLoginUserInfo()Lcom/dgiot/speedmonitoring/bean/TokenBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dgiot/speedmonitoring/bean/TokenBean;->getAdverCount()I

    move-result v1

    .line 295
    invoke-static {}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getYdSmallWindowShowNum()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    if-lez v1, :cond_2

    .line 296
    invoke-static {}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getYdSmallWindowShowNum()I

    move-result v2

    if-ge v2, v1, :cond_2

    .line 297
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/dgiot/speedmonitoring/databinding/FragmentHomeBinding;

    if-eqz v1, :cond_0

    iget-object v0, v1, Lcom/dgiot/speedmonitoring/databinding/FragmentHomeBinding;->llAdTop:Landroid/widget/LinearLayout;

    :cond_0
    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 298
    :goto_0
    invoke-static {}, Lcom/dgiot/speedmonitoring/DGConfiguration;->saveYdSmallWindowShowNum()V

    .line 299
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->loadJGTopAd()V

    goto :goto_1

    .line 302
    :cond_2
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/dgiot/speedmonitoring/databinding/FragmentHomeBinding;

    if-eqz v1, :cond_3

    iget-object v0, v1, Lcom/dgiot/speedmonitoring/databinding/FragmentHomeBinding;->llAdTop:Landroid/widget/LinearLayout;

    :cond_3
    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_1
    return-void
.end method

.method public initialize()V
    .locals 6

    .line 356
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->checkUpdate()V

    .line 358
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v2, "requireActivity(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroidx/lifecycle/ViewModelStoreOwner;

    invoke-direct {v0, v1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v1, Lcom/dgiot/speedmonitoring/ui/home/HomeViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/ui/home/HomeViewModel;

    .line 357
    iput-object v0, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->homeViewModel:Lcom/dgiot/speedmonitoring/ui/home/HomeViewModel;

    .line 360
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->cleanVideoFile()V

    .line 361
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->initJGTopAd()V

    .line 362
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->initAd()V

    .line 367
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentHomeBinding;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentHomeBinding;->recyclerviewDeviceList:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;

    if-eqz v0, :cond_0

    .line 368
    invoke-virtual {v0, v1}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->setSwipeItemMenuEnabled(Z)V

    .line 369
    new-instance v2, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;

    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->initData()Ljava/util/ArrayList;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment$initialize$1$1;

    invoke-direct {v5, p0, v0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment$initialize$1$1;-><init>(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;)V

    check-cast v5, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewClickListener;

    invoke-direct {v2, v3, v4, v5}, Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;-><init>(Ljava/util/List;Landroid/content/Context;Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter$ViewClickListener;)V

    iput-object v2, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->deviceVideoAdapter:Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;

    .line 445
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, v2}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 446
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, v2}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 447
    new-instance v2, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;

    const/16 v3, 0xa

    const/16 v4, 0x1e

    const/4 v5, 0x0

    invoke-direct {v2, v5, v3, v4}, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;-><init>(III)V

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    invoke-virtual {v0, v2}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 450
    :cond_0
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->initLoadView()V

    .line 451
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->getBase()Lcom/dgiot/speedmonitoring/base/Base;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v2, Lcom/dgiot/speedmonitoring/enumerate/DataLoadResult;->LOADING:Lcom/dgiot/speedmonitoring/enumerate/DataLoadResult;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v2, v4, v3, v4}, Lcom/dgiot/speedmonitoring/base/Base;->setProgressView$default(Lcom/dgiot/speedmonitoring/base/Base;Lcom/dgiot/speedmonitoring/enumerate/DataLoadResult;Ljava/lang/String;ILjava/lang/Object;)V

    .line 453
    :cond_1
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentHomeBinding;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentHomeBinding;->llNotificationHintSetting:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    new-instance v2, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment$$ExternalSyntheticLambda1;-><init>(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 469
    :cond_2
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentHomeBinding;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentHomeBinding;->ivSelectGroup:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    new-instance v2, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 472
    :cond_3
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->requestIsServiceActivate()V

    .line 473
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentHomeBinding;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentHomeBinding;->llContacts:Lcom/dgiot/speedmonitoring/ui/view/FloatAdsorbContainer;

    if-eqz v0, :cond_4

    new-instance v2, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment$$ExternalSyntheticLambda3;-><init>(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;)V

    invoke-virtual {v0, v2}, Lcom/dgiot/speedmonitoring/ui/view/FloatAdsorbContainer;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 493
    :cond_4
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentHomeBinding;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentHomeBinding;->ivVideo:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    new-instance v2, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment$$ExternalSyntheticLambda4;-><init>(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 502
    :cond_5
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentHomeBinding;

    if-eqz v0, :cond_6

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentHomeBinding;->llVideo:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_6

    new-instance v2, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment$$ExternalSyntheticLambda5;-><init>(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 513
    :cond_6
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentHomeBinding;

    if-eqz v0, :cond_7

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentHomeBinding;->llAddDevice:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_7

    new-instance v2, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment$$ExternalSyntheticLambda6;-><init>(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 523
    :cond_7
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentHomeBinding;

    if-eqz v0, :cond_8

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentHomeBinding;->ivScan:Landroid/widget/ImageView;

    if-eqz v0, :cond_8

    new-instance v2, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment$$ExternalSyntheticLambda7;-><init>(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 534
    :cond_8
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentHomeBinding;

    if-eqz v0, :cond_9

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentHomeBinding;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    if-eqz v0, :cond_9

    new-instance v2, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment$$ExternalSyntheticLambda8;-><init>(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;)V

    invoke-virtual {v0, v2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setOnRefreshListener(Lcom/scwang/smartrefresh/layout/listener/OnRefreshListener;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 547
    :cond_9
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.dgiot.speedmonitoring.device.disconnect.one"

    .line 548
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.dgiot.speedmonitoring.device.connect.one"

    .line 549
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.dgiot.speedmonitoring.device.disconnect.all"

    .line 550
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.dgiot.speedmonitoring.connect.disconnect"

    .line 551
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.dgiot.speedmonitoring.device.base.info"

    .line 552
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.dgiot.speedmonitoring.broadcast.device.msg"

    .line 553
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.dgiot.speedmonitoring.broadcast.login.invalid"

    .line 554
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.dgiot.speedmonitoring.select.video.finish"

    .line 555
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "broadcast_load_interstitial_finish"

    .line 556
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "broadcast_close_info_ad"

    .line 557
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 559
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->mesBroadcastReceiver:Lcom/dgiot/speedmonitoring/ui/home/HomeFragment$mesBroadcastReceiver$1;

    check-cast v3, Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroidx/fragment/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 561
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->TAG:Ljava/lang/String;

    sget-boolean v2, Lcom/dgiot/speedmonitoring/DGConfiguration;->isShowNote:Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "isShowNote = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 562
    sget-boolean v0, Lcom/dgiot/speedmonitoring/DGConfiguration;->isShowNote:Z

    if-nez v0, :cond_a

    .line 563
    sput-boolean v1, Lcom/dgiot/speedmonitoring/DGConfiguration;->isShowNote:Z

    .line 564
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->requestSystemNote()V

    .line 567
    :cond_a
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentHomeBinding;

    if-eqz v0, :cond_b

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentHomeBinding;->flAdContent:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_b

    new-instance v1, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment$$ExternalSyntheticLambda9;

    invoke-direct {v1}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment$$ExternalSyntheticLambda9;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 571
    :cond_b
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->checkBlueDevicePermission()V

    .line 573
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->cleanLog()V

    .line 576
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->initAdRechargeHintViewClick()V

    return-void
.end method

.method public final isLoadAd()Z
    .locals 1

    .line 796
    iget-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->isLoadAd:Z

    return v0
.end method

.method public final isLoadInterstitialAd()Z
    .locals 1

    .line 2209
    iget-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->isLoadInterstitialAd:Z

    return v0
.end method

.method public final isRefreshYunInfo()Z
    .locals 1

    .line 1662
    iget-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->isRefreshYunInfo:Z

    return v0
.end method

.method public final isResume()Z
    .locals 1

    .line 1076
    iget-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->isResume:Z

    return v0
.end method

.method public final isShowGifHintLogic()Z
    .locals 1

    .line 2629
    iget-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->isShowGifHintLogic:Z

    return v0
.end method

.method public final isShowHint()Z
    .locals 1

    .line 2286
    iget-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->isShowHint:Z

    return v0
.end method

.method public final isShowHintFlag()Z
    .locals 1

    .line 2362
    iget-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->isShowHintFlag:Z

    return v0
.end method

.method public onDestroyView()V
    .locals 2

    .line 2022
    invoke-super {p0}, Lcom/dgiot/speedmonitoring/base/BaseFragment;->onDestroyView()V

    .line 2023
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->mesBroadcastReceiver:Lcom/dgiot/speedmonitoring/ui/home/HomeFragment$mesBroadcastReceiver$1;

    if-eqz v0, :cond_0

    .line 2024
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->mesBroadcastReceiver:Lcom/dgiot/speedmonitoring/ui/home/HomeFragment$mesBroadcastReceiver$1;

    check-cast v1, Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2027
    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->deviceVideoAdapter:Lcom/dgiot/speedmonitoring/adapter/DeviceVideoAdapter;

    if-nez v1, :cond_1

    const-string v1, "deviceVideoAdapter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_1

    .line 2028
    const/4 v0, 0x0


    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1110
    invoke-super {p0}, Lcom/dgiot/speedmonitoring/base/BaseFragment;->onPause()V

    const/4 v0, 0x0

    .line 1111
    iput-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->isFragmentForeground:Z

    .line 1112
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->stopAutoScroll()V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 1079
    invoke-super {p0}, Lcom/dgiot/speedmonitoring/base/BaseFragment;->onResume()V

    const/4 v0, 0x1

    .line 1080
    iput-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->isResume:Z

    .line 1082
    iput-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->isFragmentForeground:Z

    .line 1084
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->refreshNativeAdView()V

    .line 1086
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "home onResume"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    .line 1087
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->checkNotificationPer()V

    .line 1088
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->checkNotificationStateFromSetting()V

    .line 1089
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->initLoad()V

    .line 1091
    iget-boolean v1, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->isNeedReshowInterstitial:Z

    if-eqz v1, :cond_0

    .line 1092
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "showInterstitial:reshow"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/common/util/ALog;->d(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 1093
    iput-boolean v1, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->isNeedReshowInterstitial:Z

    .line 1094
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->showInterstitial()V

    .line 1096
    :cond_0
    invoke-static {}, Lcom/dgiot/speedmonitoring/service/DeviceInfoService;->stopServer()V

    .line 1098
    invoke-static {}, Lcom/dgiot/speedmonitoring/DGConfiguration;->getDeviceList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v0, :cond_1

    .line 1099
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->cleanVideoFile()V

    .line 1102
    :cond_1
    iget-object v1, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->bannerList:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->startAutoScroll()V

    :cond_2
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 1069
    invoke-super {p0}, Lcom/dgiot/speedmonitoring/base/BaseFragment;->onStop()V

    const/4 v0, 0x0

    .line 1070
    iput-boolean v0, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->isResume:Z

    .line 1072
    invoke-direct {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->stopAutoScroll()V

    .line 1073
    iget-object v0, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->handlerBanner:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public final requestIsServiceActivate()V
    .locals 2

    .line 2115
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/dgiot/speedmonitoring/databinding/FragmentHomeBinding;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/dgiot/speedmonitoring/databinding/FragmentHomeBinding;->llContacts:Lcom/dgiot/speedmonitoring/ui/view/FloatAdsorbContainer;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/dgiot/speedmonitoring/ui/view/FloatAdsorbContainer;->setVisibility(I)V

    .line 2121
    :goto_1
    sget-object v0, Lcom/dgiot/speedmonitoring/repository/DGApiRepository;->INSTANCE:Lcom/dgiot/speedmonitoring/repository/DGApiRepository;

    new-instance v1, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment$requestIsServiceActivate$1;

    invoke-direct {v1, p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment$requestIsServiceActivate$1;-><init>(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;)V

    check-cast v1, Lcom/dgiot/speedmonitoring/http/ResponseCallBack;

    invoke-virtual {v0, v1}, Lcom/dgiot/speedmonitoring/repository/DGApiRepository;->requestIsServiceActivate(Lcom/dgiot/speedmonitoring/http/ResponseCallBack;)V

    return-void
.end method

.method public final requestSystemNote()V
    .locals 2

    .line 2147
    sget-object v0, Lcom/dgiot/speedmonitoring/repository/DGApiRepository;->INSTANCE:Lcom/dgiot/speedmonitoring/repository/DGApiRepository;

    new-instance v1, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment$requestSystemNote$1;

    invoke-direct {v1, p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment$requestSystemNote$1;-><init>(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;)V

    check-cast v1, Lcom/dgiot/speedmonitoring/http/ResponseCallBack;

    invoke-virtual {v0, v1}, Lcom/dgiot/speedmonitoring/repository/DGApiRepository;->requestSystemNote(Lcom/dgiot/speedmonitoring/http/ResponseCallBack;)V

    return-void
.end method

.method public final setAdHeadView(Landroid/view/View;)V
    .locals 0

    .line 797
    iput-object p1, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->adHeadView:Landroid/view/View;

    return-void
.end method

.method public final setCenterPopup(Lcom/lxj/xpopup/core/BasePopupView;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->centerPopup:Lcom/lxj/xpopup/core/BasePopupView;

    return-void
.end method

.method public final setDeviceListResult(Lcom/dgiot/speedmonitoring/ui/home/HomePageState$GetDeviceListResult;)V
    .locals 0

    .line 1408
    iput-object p1, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->deviceListResult:Lcom/dgiot/speedmonitoring/ui/home/HomePageState$GetDeviceListResult;

    return-void
.end method

.method public final setGifHintPop(Lcom/lxj/xpopup/core/BasePopupView;)V
    .locals 0

    .line 2694
    iput-object p1, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->gifHintPop:Lcom/lxj/xpopup/core/BasePopupView;

    return-void
.end method

.method public final setHasGetSubdeviceState(Z)V
    .locals 0

    .line 1666
    iput-boolean p1, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->hasGetSubdeviceState:Z

    return-void
.end method

.method public final setHasLoadDeviceVideoFileService(Z)V
    .locals 0

    .line 1664
    iput-boolean p1, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->hasLoadDeviceVideoFileService:Z

    return-void
.end method

.method public final setHasLoadVideoFileDownService(Z)V
    .locals 0

    .line 1665
    iput-boolean p1, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->hasLoadVideoFileDownService:Z

    return-void
.end method

.method public final setLoadAd(Z)V
    .locals 0

    .line 796
    iput-boolean p1, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->isLoadAd:Z

    return-void
.end method

.method public final setLoadInterstitialAd(Z)V
    .locals 0

    .line 2209
    iput-boolean p1, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->isLoadInterstitialAd:Z

    return-void
.end method

.method public final setMAdHintRechargePops(Lcom/lxj/xpopup/core/BasePopupView;)V
    .locals 0

    .line 2458
    iput-object p1, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->mAdHintRechargePops:Lcom/lxj/xpopup/core/BasePopupView;

    return-void
.end method

.method public final setNoTFHintPop(Lcom/lxj/xpopup/core/BasePopupView;)V
    .locals 0

    .line 2035
    iput-object p1, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->noTFHintPop:Lcom/lxj/xpopup/core/BasePopupView;

    return-void
.end method

.method public final setNotePopupView(Lcom/lxj/xpopup/core/BasePopupView;)V
    .locals 0

    .line 2168
    iput-object p1, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->notePopupView:Lcom/lxj/xpopup/core/BasePopupView;

    return-void
.end method

.method public final setNotificationsDialog(Lcom/afollestad/materialdialogs/MaterialDialog;)V
    .locals 0

    .line 1009
    iput-object p1, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->notificationsDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    return-void
.end method

.method public final setRefreshYunInfo(Z)V
    .locals 0

    .line 1662
    iput-boolean p1, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->isRefreshYunInfo:Z

    return-void
.end method

.method public final setResume(Z)V
    .locals 0

    .line 1076
    iput-boolean p1, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->isResume:Z

    return-void
.end method

.method public final setShowGifHintLogic(Z)V
    .locals 0

    .line 2629
    iput-boolean p1, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->isShowGifHintLogic:Z

    return-void
.end method

.method public final setShowHint(Z)V
    .locals 0

    .line 2286
    iput-boolean p1, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->isShowHint:Z

    return-void
.end method

.method public final setShowHintFlag(Z)V
    .locals 0

    .line 2362
    iput-boolean p1, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->isShowHintFlag:Z

    return-void
.end method

.method public final setShowUpdateNameDialog(Z)V
    .locals 0

    .line 915
    iput-boolean p1, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->showUpdateNameDialog:Z

    return-void
.end method

.method public final setUpLoadListNum(I)V
    .locals 0

    .line 1663
    iput p1, p0, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->upLoadListNum:I

    return-void
.end method

.method public final unBindDevice(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 1751
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->getBase()Lcom/dgiot/speedmonitoring/base/Base;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/dgiot/speedmonitoring/base/Base;->showLoadDialog()V

    .line 1752
    :cond_0
    sget-object v0, Lcom/dgiot/speedmonitoring/repository/DGApiRepository;->INSTANCE:Lcom/dgiot/speedmonitoring/repository/DGApiRepository;

    new-instance v1, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment$unBindDevice$1$1;

    invoke-direct {v1, p0, p1}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment$unBindDevice$1$1;-><init>(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;Ljava/lang/String;)V

    check-cast v1, Lcom/dgiot/speedmonitoring/http/ResponseCallBack;

    invoke-virtual {v0, p1, v1}, Lcom/dgiot/speedmonitoring/repository/DGApiRepository;->requestUnBindDevice(Ljava/lang/String;Lcom/dgiot/speedmonitoring/http/ResponseCallBack;)V

    :cond_1
    return-void
.end method

.method public final unBindShareDevice(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 1796
    invoke-virtual {p0}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;->getBase()Lcom/dgiot/speedmonitoring/base/Base;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/dgiot/speedmonitoring/base/Base;->showLoadDialog()V

    .line 1797
    :cond_0
    sget-object v0, Lcom/dgiot/speedmonitoring/repository/DGApiRepository;->INSTANCE:Lcom/dgiot/speedmonitoring/repository/DGApiRepository;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v1, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment$unBindShareDevice$1$1;

    invoke-direct {v1, p0, p2}, Lcom/dgiot/speedmonitoring/ui/home/HomeFragment$unBindShareDevice$1$1;-><init>(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;Ljava/lang/String;)V

    check-cast v1, Lcom/dgiot/speedmonitoring/http/ResponseCallBack;

    invoke-virtual {v0, p2, p1, v1}, Lcom/dgiot/speedmonitoring/repository/DGApiRepository;->requestUnBindShareDevice(Ljava/lang/String;Ljava/lang/String;Lcom/dgiot/speedmonitoring/http/ResponseCallBack;)V

    :cond_1
    return-void
.end method

.method public final getNativeAdList()[Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final isNeedReshowInterstitial()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final setNeedReshowInterstitial(Z)V
    .locals 0

    return-void
.end method

.method public final requestAd()V
    .locals 0

    return-void
.end method

.method public final loadJGTopAd()V
    .locals 0

    return-void
.end method

.method private final initAd()V
    .locals 0

    return-void
.end method

.method private final preploadAd()V
    .locals 0

    return-void
.end method

.method private final loadAd()V
    .locals 0

    return-void
.end method

.method private final updateAdData()V
    .locals 0

    return-void
.end method

.method private final showInterstitial()V
    .locals 0

    return-void
.end method

.method private final refreshNativeAdView()V
    .locals 0

    return-void
.end method

.method public static final synthetic access$showInterstitial(Lcom/dgiot/speedmonitoring/ui/home/HomeFragment;)V
    .locals 0

    return-void
.end method
