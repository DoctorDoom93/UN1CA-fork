.class final Lio/mesalabs/unica/troubleshooting/ChatHistory$Request;
.super Ljava/lang/Object;
.source "ChatHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/mesalabs/unica/troubleshooting/ChatHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Request"
.end annotation


# instance fields
.field final included:I

.field final log:Ljava/lang/String;

.field final omitted:I

.field final preview:Ljava/lang/String;

.field final question:Ljava/lang/String;

.field final wire:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 7

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/mesalabs/unica/troubleshooting/ChatHistory$Request;->wire:Ljava/lang/String;

    iput-object p2, p0, Lio/mesalabs/unica/troubleshooting/ChatHistory$Request;->question:Ljava/lang/String;

    iput-object p3, p0, Lio/mesalabs/unica/troubleshooting/ChatHistory$Request;->log:Ljava/lang/String;

    iput-object p4, p0, Lio/mesalabs/unica/troubleshooting/ChatHistory$Request;->preview:Ljava/lang/String;

    iput p5, p0, Lio/mesalabs/unica/troubleshooting/ChatHistory$Request;->included:I

    iput p6, p0, Lio/mesalabs/unica/troubleshooting/ChatHistory$Request;->omitted:I

    return-void
.end method

